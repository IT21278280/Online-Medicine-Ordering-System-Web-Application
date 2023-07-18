package com.checkout;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateCheckoutServlet")
public class updateCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idcheckout = request.getParameter("idcheckout");
		String FirstName = request.getParameter("FirstName");
		String LastName = request.getParameter("LastName");
		String Street = request.getParameter("Street");
		String Apartment = request.getParameter("Apartment");
		String Country = request.getParameter("Country");
		String Postal = request.getParameter("Postal");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		boolean isTrue;
		
		isTrue = checkoutDBUtil.updateCheckout(idcheckout,FirstName, LastName,Street, Apartment,Country, Postal,email,phone);
		
		if(isTrue == true) {
			
		
			RequestDispatcher dis = request.getRequestDispatcher("successUpdateCheckout.jsp");
			dis.forward(request, response);
			
			RequestDispatcher disStep2 = request.getRequestDispatcher("viewCheckout.jsp");
			disStep2.forward(request, response);
			
		}
		else {

			System.out.println("Insert data unsuccessfully");
		}
	
	
   }
	
}	
