package cart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class cartDAO {
	 private Connection con;
	   private PreparedStatement ps;
	   private ResultSet rs;
	   private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	   private String user ="java";
	   private String pwd ="1234";
	   
	   public cartDAO() {
	      try {
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      }
	   }
	   
	   public ArrayList<cartDTO> list() {
	      ArrayList<cartDTO> list = new ArrayList<cartDTO>();
	      String sql = "select * from cart";
	      try {
	         con = DriverManager.getConnection(url, user, pwd);
	         ps = con.prepareStatement(sql);
	         rs = ps.executeQuery();
	         
	         while(rs.next()) {
	            cartDTO dto = new cartDTO();
	            dto.setImg(rs.getString("img"));
	            dto.setProduct(rs.getString("product"));
	            dto.setPrice(rs.getString("price"));
	            dto.setCount(rs.getString("count"));
	            list.add(dto);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      
	      return list;
	   }
	   
	   
	   
	   public void modifyCount(int num, String pro) {
		   System.out.println(num);
		   System.out.println(pro);
		   String sql = "update cart set count=? where product=?";

		   try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.setString(2, pro);
			ps.executeUpdate();
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		   
		   
		   
		   
		   
		   
	   }
	   

}
