package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String rePassword = request.getParameter("re_pass");
		String contact = request.getParameter("contact");
		
		
		boolean isTrue;
		
		isTrue = usersDBUtil.insertUsers(name, email, password, rePassword, contact);
		
		if(isTrue == true) {
			response.sendRedirect("login.jsp");
			PrintWriter out = response.getWriter(); 
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Registration Successfully');"); 
			out.println("location='login.jsp';"); 
			out.println("</script>");
			
		} else {
			System.out.println("Insert data unsuccessfully");
		}
	
		
	}

}
