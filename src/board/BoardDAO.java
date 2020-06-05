package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {
	private String url = "jdbc:oracle:thin:@192.168.203.128:1521:xe";
	private String user = "java";
	private String pwd = "1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDTO> list() {
//		String sql = "select * from test_board";
		String sql = "select * from test_board order by idgroup desc, step asc";
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setId(rs.getInt("id"));
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setSavedate(rs.getTimestamp("savedate"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	public void write_save(String name, String title, String content) {
//		id, idgroup은 같은건데 정렬을 이용할떄 필요하기에 하나더 만들어놨고 seq스퀸즈? 암튼 그걸로 순서대로 번호를 입력하게 자동으로
//				만들어놓은 방법이다. 테이블명에 변수들을 지정해서 순서를 만들어주는 것또한 방법이고 그걸 하지않으면 순서대로 넣지못해서
//			에러가날경우가 존재한다.
		String sql = "insert into test_board(id,name,title,content,hit,"
				+ "idgroup,step,indent) values(test_board_seq.nextval,?,?,?,0,test_board_seq"
				+ ".currval,0,0)";
		
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, title);
			ps.setString(3, content);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	
	public BoardDTO contentView(String id) {
		upHit(id);
		String sql = "select * from test_board where id=?";
		BoardDTO dto = new BoardDTO();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getInt("id"));
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setSavedate(rs.getTimestamp("savedate"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	
	private void upHit(String id) {
		String sql = "update test_board set hit=hit + 1 where id=" + id;
		
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public void modify(BoardDTO dto) {
		String sql =
				"update test_board set name=?, title=?,content=?where id=?";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			System.out.println(dto.getName() + dto.getTitle() + dto.getContent() + dto.getId());
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			ps.setInt(4, dto.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void delete(String id) {
		String sql = "delete from test_board where id="+id;
		
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public BoardDTO reply_view(String id) {
		String sql = "select * from test_board where id=?";
		BoardDTO dto = new BoardDTO();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getInt("id"));
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setSavedate(rs.getTimestamp("savedate"));
				dto.setHit(rs.getInt("hit"));
				dto.setIdgroup(rs.getInt("idgroup"));
				dto.setStep(rs.getInt("step"));
				dto.setIndent(rs.getInt("indent"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public void reply(BoardDTO dto) {
		replyShape(dto);
		String sql ="insert into test_board(id,name,title,content,idgroup"
				+ ",step,indent) values(test_board_seq.nextval,?,?,?,?,?,?)";
		
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContent());
			ps.setInt(4, dto.getIdgroup());
			ps.setInt(5, dto.getStep() + 1);
			ps.setInt(6, dto.getIndent() + 1);
			rs = ps.executeQuery();
			

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void replyShape(BoardDTO dto) {
		String sql ="update test_board set step= step+1 where idgroup=? and step > ?";
		
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setInt(1, dto.getIdgroup());
			ps.setInt(2, dto.getStep());
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
