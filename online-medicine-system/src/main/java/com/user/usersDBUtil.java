package com.user;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class usersDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	//insert data
	public static boolean insertUsers(String name, String email, String password, String rePassword, String contact) {
		
		boolean isBoolean = false;
		
		try {
			
			con = DBConnect.getConnection();//get connection
			state = con.createStatement();//create statement
			String sql = "INSERT INTO users values(0,'"+name+"', '"+email+"', '"+password+"', '"+rePassword+"', '"+contact+"', 0)";
			int rs = state.executeUpdate(sql);
			
			if(rs > 0) {
				isBoolean = true;
			}else {
				isBoolean = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isBoolean;
	}
	
	//login
	public static boolean login(String email, String password) {
		
		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql = "SELECT * FROM users WHERE email = '"+email+"' AND password = '"+password+"'";
			rs = state.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static List<User>userDetails(String email, String password){
		ArrayList<User> user = new ArrayList<>();

		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql ="SELECT * FROM users WHERE email = '"+email+"' AND password = '"+password+"'";
			rs = state.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String uName = rs.getString(2);
				String uEmail = rs.getString(3);
				String uPassword = rs.getString(4);
				String rePassword = rs.getString(5);
				String contact = rs.getString(6);
				String role = rs.getString(7);
				
				User u = new User(id, uName, uEmail, uPassword, rePassword, contact, role);//create obj
				user.add(u);//array object pass customer object
			}
		}
		catch(Exception e) {
			e.printStackTrace();//print error
			System.out.println("Error");
		}
		
		return user;
	}
	
	public static boolean updateUser(String id, String name, String email, String password, String rePassword, String contact) {
		boolean isBoolean = false;
		try {
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql = "update users set name='"+name+"', email ='"+email+"', password ='"+password+"', rePassword ='"+rePassword+"', contact ='"+contact+"'"
					+ "WHERE id ='"+id+"'";
			int rs = state.executeUpdate(sql);
			
			if(rs > 0 ) {
				isBoolean = true;
			}else {
				isBoolean= false;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error");
		}
		return isBoolean;
	}
	
	public static List<User>getDetails(String id){
		int convertedID = Integer.parseInt(id);

		ArrayList<User> user = new ArrayList<>();

		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql ="SELECT * FROM users WHERE id = '"+convertedID+"'";
			rs = state.executeQuery(sql);
			
			if(rs.next()) {
				int uId = rs.getInt(1);
				String uName = rs.getString(2);
				String uEmail = rs.getString(3);
				String uPassword = rs.getString(4);
				String rePassword = rs.getString(5);
				String contact = rs.getString(6);
				String role = rs.getString(7);
//				int role = rs.getInt(6);
				
				User u = new User(uId, uName, uEmail, uPassword, rePassword, contact, role);//create obj
				user.add(u);//array object pass customer object
			}
		}catch(Exception e) {
			e.printStackTrace();//print error
			System.out.println("Error");
		}
		
		return user;
	}
	
	public static boolean deleteUser(String  id) {
		
		int convertID = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql = "DELETE FROM users WHERE id = '"+convertID+"'";
			int rs = state.executeUpdate(sql);
			
			if (rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
}
