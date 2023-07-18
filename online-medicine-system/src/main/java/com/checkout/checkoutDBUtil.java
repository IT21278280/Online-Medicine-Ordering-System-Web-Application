package com.checkout;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;


public class checkoutDBUtil {

	
	private static Connection con = null;
	private static Statement state = null;
	private static ResultSet rs = null;
	
	//insert data
	public static boolean insertValues(String FirstName, String LastName, String Street, String Apartment, String Country, String Postal, String email, String phone) {
		
		boolean isBoolean = false;
		
		try {
			
			con = DBConnect.getConnection();//get connection
			state = con.createStatement();//create statement
			String sql = "INSERT INTO checkout values(0,'"+FirstName+"', '"+LastName+"', '"+Street+"', '"+Apartment+"', '"+Country+"','"+Postal+"','"+email+"','"+phone+"')";
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
	
	
//	public static List<Pharamacy>validate(String name, String code, String image, String price, String description){
//		ArrayList<Pharamacy> product = new ArrayList<>();//create object using array
//		
//		try {
//			
//			con = DBConnect.getConnection();
//			state = con.createStatement();
//			String sql = "SELECT * FROM product WHERE name = '"+name+"', code = '"+code+"', image = '"+image+"', price = '"+price+"', description = '"+description+"'";
//			rs = state.executeQuery(sql);
//			
//			if(rs.next()) {
//				int id = rs.getInt(1);
//				String pname = rs.getString(2);
//				String pcode = rs.getString(3);
//				String pimage = rs.getString(4);
//				String pprice = rs.getString(5);
//				String des = rs.getString(6);
//				
//				Pharamacy pharm = new Pharamacy(id, pname, pcode, pimage, pprice, des);//create obj
//				product.add(pharm);
//				
//			}	
//			
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		return null;
//		
//	}
	
	public static List<Checkout> getDetails(){
		ArrayList<Checkout> checkout = new ArrayList<>();//create object using array
		
		try {
			con = DBConnect.getConnection();
			state= con.createStatement();
			String sql = "SELECT * FROM checkout";
			rs = state.executeQuery(sql);
			
			while(rs.next()) {
				int idcheckout = rs.getInt(1);
				String FirstName = rs.getString(2);
				String LastName = rs.getString(3);
				String Street = rs.getString(4);
				String Apartment = rs.getString(5);
				String Country = rs.getString(6);
				String Postal = rs.getString(7);
				String email = rs.getString(8);
				String phone = rs.getString(9);
				
				Checkout checks = new Checkout(idcheckout, FirstName, LastName, Street, Apartment, Country, Postal, email, phone );//create obj
				checkout.add(checks);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return checkout;
		
	}
	
	public static boolean updateCheckout(String idcheckout, String FirstName, String LastName, String Street, String Apartment, String Country, String Postal, String email, String phone) {
		boolean isBoolean = false;
		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql = "UPDATE checkout SET FirstName='"+FirstName+"',LastName ='"+LastName+"', Street = '"+Street+"', Apartment = '"+Apartment+"', Country = '"+Country+"', Postal = '"+Postal+"', email = '"+email+"', phone = '"+phone+"'"
					+ "WHERE idcheckout = '"+idcheckout+"'";
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
	
	
	
	
	public static List<Checkout> getDetails(String Idcheckout) {
    	
		int convertedID = Integer.parseInt(Idcheckout);
    	
		ArrayList<Checkout> checkouts = new ArrayList<>();
    	
		try {
    		
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql = "select * from checkout where idcheckout='"+convertedID+"'";
			rs = state.executeQuery(sql);
    		
		while(rs.next()) {
		    int idcheckout = rs.getInt(1);
			String FirstName = rs.getString(2);
			String LastName = rs.getString(3);
			String Street = rs.getString(4);
	 		String Apartment = rs.getString(5);   
			String Country = rs.getString(6);
			String Postal = rs.getString(7);
			String email = rs.getString(8);
			String phone = rs.getString(9);
				
				Checkout c = new Checkout(idcheckout,FirstName,LastName,Street,Apartment,Country,Postal,email,phone);
				checkouts.add(c);
	 		}
		
	 	}
 	catch(Exception e) {
			e.printStackTrace();
	 	}	
		return checkouts;	
      }
	
	
	
	
	public static boolean deleteCheckout(String idcheckout) {
		int convertId = Integer.parseInt(idcheckout);
		boolean isBoolean = false;
		try {
			
			con = DBConnect.getConnection();
			state = con.createStatement();
			String sql = "DELETE FROM checkout WHERE idcheckout='"+convertId+"'";
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



	
	  
	
	
	//	public Checkout get(int id) throws SQLException, IOException {
	//	Checkout checks = null;
		
	//	try {
	//		
	//		con = DBConnect.getConnection();
	//		state = con.createStatement();
	//		String sql = "SELECT * FROM checkout WHERE idcheckout = ?";
	//		ResultSet  rs = state.executeQuery(sql);
			
	//		if (rs.next()) {
				//phramacy = new Pharamacy();
	//           Blob blob = rs.getBlob("image");
                 
	//          InputStream inputStream = blob.getBinaryStream();
	//          ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
	//            byte[] buffer = new byte[4096];
	//             int bytesRead = -1;
                //             
	//            while ((bytesRead = inputStream.read(buffer)) != -1) {
	//              outputStream.write(buffer, 0, bytesRead);                  
                    //            }
                 
	//            byte[] imageBytes = outputStream.toByteArray();
	//            String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                 
                 
	//           inputStream.close();
                //           outputStream.close();
                 
	//          checks.setBase64Image(base64Image);
	//       }   
			
	//	}
	//	catch(Exception e){
	//		e.printStackTrace();
	//	}
//	return checks;
	//}


	
	
}
