package com.phramacy;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		boolean isBoolean;
		
		isBoolean = phramacyDBUtil.deletePrdouct(id);
		
		if(isBoolean == true) {
			RequestDispatcher dis = request.getRequestDispatcher("viewProduct.jsp");
			dis.forward(request, response);	
		}else{
			List<Pharamacy> deleteProduct = phramacyDBUtil.getproductDetails(id);
			request.setAttribute("deleteProduct", deleteProduct);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
	}
		
		
	}

}
