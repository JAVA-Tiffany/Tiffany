package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import Database.DTO;

public class DAO {
	private String url ="jdbc:oracle:thin:@localhost:1521:xe";
	private String user ="java";
	private String pwd = "1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	public DAO() {


		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public ArrayList<DTO> select(){
		ArrayList<DTO> list = new ArrayList<DTO>();
		String sql = "select * from self_design";
		try {
			con=DriverManager.getConnection(url,user,pwd);
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				DTO dto = new DTO();
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setPhon(rs.getString("phon"));
				list.add(dto);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	
	
	public ArrayList<DTO> select(String id){
		ArrayList<DTO> list = new ArrayList<DTO>();
		String sql = "select id from self_design where id='" + id + "'";
		try {
			con=DriverManager.getConnection(url,user,pwd);
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()) {
				DTO dto = new DTO();
				dto.setId(rs.getString("id"));
				list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public void insert(String id,String pw,String name,String addr,String phon){
		String sql = "insert into self_design values(?,?,?,?,?)";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pw);
			ps.setString(3, name);
			ps.setString(4, addr);
			ps.setString(5,phon);
			ps.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}
	
	
	public int loginchk(String id,String pw){
		String sql = "select * from self_design where id='" + id + "'";
		System.out.println(id);
		System.out.println(pw);
		DTO member = new DTO();
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
					if(id.equals(rs.getString("id")) && pw.equals(rs.getString("pw"))) {
						System.out.println("로그인성공");
						return 1;
					}else if(id.equals(rs.getString("id")) && !pw.equals(rs.getString("pw"))) {
						System.out.println("비밀번호가 틀립니다");
						return 2;
					}else {
						System.out.println("아이디가 존재하지 않습니다");
						return 3;
					}
					
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 3;
		
		
	}
	


}
