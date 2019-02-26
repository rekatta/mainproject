package com.org.connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.org.pojo.User;

public class UserDao {
	public String insert(User user)
	{
		try {

		String sql =  "insert into users values (?,?,?)";
		Connection con=ConnectionFactory.getConnection();
		PreparedStatement pst=con.prepareStatement(sql);
			      
				  pst.setString(1, user.getUser_emailid());
				  pst.setString(2, user.getUser_password());
				  pst.setString(3, user.getUser_phonenumber());
				  pst.executeUpdate();
				} 
	    catch (Exception e) {
	              e.printStackTrace();

				}
				return "inserted";
}
	
	public boolean validate(String email,String password) {
		
		
		try {
		 //String queryString = "SELECT * FROM users where user_emailid=? and user_password=?";
			Connection con=ConnectionFactory.getConnection();
					String query = "SELECT user_emailid, user_password FROM users";
			
		     Statement s=con.createStatement();
		      
		     
		      ResultSet results =s.executeQuery(query);
		    
			
			 while (results.next())
			 { 
				 String emailid = results.getString("user_emailid");
			  String pass = results.getString("user_password");
			  
			 if ((email.equals(emailid)) && (password.equals(pass)))
			 { 
				 
				 return true;
			
			 } }
			
		      
		}
		catch (Exception e) {
			 e.printStackTrace();
		}
		return false;
		 
		
		
	}
	
	
	
	
	
	public String delete(String emailid,String password,String phonenumber)
	{
		String sql1="delete from users where(?)";
		
		return "deleted";
		
	}
	
	/*
	 * public static void main(String[] args) { UserDao u=new UserDao(); String
	 * s=u.insert(new User("suraj@gmail.com", "suraj", "897485525"));
	 * System.out.println(s); //u.insert(emailid, password, phonenumber) }
	 */
	
}
