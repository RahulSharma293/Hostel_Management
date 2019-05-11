package chitkara.db;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
public class Example {
Connection con=null;
 public void getData()
 {
	 try {
		 con=DbConnection.getCon();
		 Statement stmt=con.createStatement();
		 ResultSet rs=stmt.executeQuery("select * from user");
		 while(rs.next())
		 {
			 System.out.println(rs.getInt("id")+" "+rs.getString("first_name"));
		 }
		 
	 }catch(Exception e)
	 {
		 e.printStackTrace();
	 }
 }
	 public void update() {
		 try {
			 con=DbConnection.getCon();
			 PreparedStatement stmt = con.prepareStatement("update user set password=? where id=1");
			 stmt.setString(1,"25463");
			 stmt.executeUpdate();
		 }catch(Exception e)
		 {
			 e.printStackTrace();
		 }
	 
 }
 public static void main(String[] args)
 {
	 Example obj=new Example();
	 obj.getData();
 }
}
