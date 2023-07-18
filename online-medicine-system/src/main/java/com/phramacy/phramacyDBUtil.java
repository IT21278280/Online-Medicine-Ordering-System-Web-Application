package com.phramacy;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

public class phramacyDBUtil {
	
	private static Connection con = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	//insert data
	public static boolean insertValues(String name, String code, String image, String price, String description) {
		
		boolean isBoolean = false;
		
		try {
			
			con = DBConnect.getConnection();//get connection
			state = con.createStatement();//create statement
			String sql = "INSERT INTO product values(0,'"+name+"', '"+code+"', '"+image+"', '"+price+"', '"+description+"')";
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
	
	
	public static List<Pharamacy> getDetails(){
		ArrayList<Pharamacy> product = new ArrayList<>();//create object using array
		
		try {
			con = DBConnect.getConnection();
			state= con.createStatement();
			String sql = "SELECT * FROM product";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String code = rs.getString(3);
				String image = rs.getString(4);
				String price = rs.getString(5);
				String des = rs.getString(6);
				
				Pharamacy pharm = new Pharamacy(id, name, code, image, price, des);//create obj
				product.add(pharm);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return product;
		
	}
	
	public static boolean updateProduct(String id, String name, String code, String image, String price, String description) {
		boolean isBoolean = false;
		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql = "UPDATE product SET name='"+name+"',code ='"+code+"', image = '"+image+"', price = '"+price+"', description = '"+description+"'"
					+ "WHERE id = '"+id+"'";
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
	
	public static List<Pharamacy> getproductDetails(String id) {
    	
    	int convertedID = Integer.parseInt(id);
    	
    	ArrayList<Pharamacy> product = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		state = con.createStatement();
    		String sql = "select * from product where id='"+convertedID+"'";
    		rs = state.executeQuery(sql);
    		
    		while(rs.next()) {
    			int proId = rs.getInt(1);
    			String name = rs.getString(2);
    			String code = rs.getString(3);
    			String image = rs.getString(4);
    			String price = rs.getString(5);
    			String description = rs.getString(6);
    			
    			Pharamacy pro = new Pharamacy(proId,name,code,image,price,description);
    			product.add(pro);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return product;	
    }
	
	public static boolean deletePrdouct(String id) {
		int convertId = Integer.parseInt(id);
		boolean isBoolean = false;
		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql = "DELETE FROM product WHERE id='"+convertId+"'";
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
}
