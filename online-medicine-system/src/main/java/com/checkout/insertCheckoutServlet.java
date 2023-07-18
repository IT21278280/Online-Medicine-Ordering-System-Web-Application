package com.checkout;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insertCheckoutServlet")
public class insertCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		String FirstName = request.getParameter("FirstName");
		String LastName = request.getParameter("LastName");
		String Street = request.getParameter("Street");
		String Apartment = request.getParameter("Apartment");
		String Country = request.getParameter("Country");
		String Postal = request.getParameter("Postal");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		
		boolean isTrue;
		
		isTrue = checkoutDBUtil.insertValues(FirstName, LastName, Street, Apartment, Country, Postal, email, phone);
		
		if(isTrue == true) {
			
			
			List<Checkout> details = checkoutDBUtil.getDetails();
			request.setAttribute("details", details);//attribute name and object name
			
			RequestDispatcher dis = request.getRequestDispatcher("successcheckout.jsp");
			dis.forward(request, response);
			
			  
			
		} else {
			System.out.println("Insert data unsuccessfully");
		}
	}
	
	
}
