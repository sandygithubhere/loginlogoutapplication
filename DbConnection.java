package db;

import java.sql.*;
public class DbConnection {
	private Connection c;
	private Statement st;
	private PreparedStatement insertUser,checkUser;	
	public DbConnection()throws Exception{
            Class.forName("com.mysql.jdbc.Driver");
            c=DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/userdb","root","incapp");
            st=c.createStatement();
            insertUser=c.prepareStatement(
                    "insert into user_info values(?,?,?,?,?)");
            checkUser=c.prepareStatement(
                    "select * from user_info where email=? and pass=?");
		
	}
public String insertUser(String e,String n,String ph,int a,String p){
        try{
            insertUser.setString(1,e);
            insertUser.setString(2,n);
            insertUser.setString(3,ph);
            insertUser.setInt(4,a);
            insertUser.setString(5,p);
            int x=insertUser.executeUpdate();
            return "Done";
        }catch(java.sql.SQLIntegrityConstraintViolationException ex){
                return "Already";
        }catch(Exception ex){
                return "Exception";
        }
}
public ResultSet checkUser(String e,String p) throws Exception{
		
    checkUser.setString(1,e);
    checkUser.setString(2,p);
    ResultSet rs=checkUser.executeQuery();
    if(rs.next()){
            return rs;
    }else{
            return null;
    }
		
}
	}