package com.phramacy;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String code = request.getParameter("code");
		String image = request.getParameter("image");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = phramacyDBUtil.updateProduct(id, name, code, image, price, description);
		
		if(isTrue == true) {
			
			response.sendRedirect("viewProduct.jsp");
		}else 

			System.out.println("Insert data unsuccessfully");
		}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dis = request.getRequestDispatcher("viewProduct.jsp");
		dis.forward(request, response);
	}
}
