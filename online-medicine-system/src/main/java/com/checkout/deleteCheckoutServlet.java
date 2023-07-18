package com.checkout;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/deleteCheckoutServlet")
public class deleteCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idcheckout = request.getParameter("idcheckout");
		
		boolean isBoolean;
		
		isBoolean = checkoutDBUtil.deleteCheckout(idcheckout);
		
		if(isBoolean == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("successDeleCheckout.jsp");
			dispatcher.forward(request, response);	
		}else{
			
			List<Checkout> deleteDetails = checkoutDBUtil.getDetails(idcheckout);
			request.setAttribute("deleteDetails", deleteDetails);
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewCheckout.jsp");
			dispatcher.forward(request, response);
	}
		
		
	}

}
