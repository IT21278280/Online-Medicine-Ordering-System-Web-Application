package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	@SuppressWarnings("unlikely-arg-type")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boolean isTrue;
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String role = request.getParameter("role");
		
		
		HttpSession session = request.getSession();
		
		isTrue = usersDBUtil.login(email, password);
		
		if(email == null || email.equals("")) {
			request.setAttribute("status", "Invalid_Email");
			RequestDispatcher dis1 = request.getRequestDispatcher("login.jsp");
			dis1.forward(request, response);

		}
		if(password == null || password.equals("")) {
			request.setAttribute("status", "Invalid_Password");
			RequestDispatcher dis1 = request.getRequestDispatcher("login.jsp");
			dis1.forward(request, response);

		}
		
		if(isTrue == true) {
			
			session.setAttribute("email", email);
			
			List<User> userDetail = usersDBUtil.userDetails(email, password);
			request.setAttribute("userDetail", userDetail);
			
//			if(role.equals(0) == true) {
//				RequestDispatcher dis1 = request.getRequestDispatcher("userDetails.jsp");
//				dis1.forward(request, response);
//			}
//			
//			if(role.equals(1) == true) {
//				RequestDispatcher dis1 = request.getRequestDispatcher("viewProduct.jsp");
//				dis1.forward(request, response);
//			}
			
			RequestDispatcher dis1 = request.getRequestDispatcher("userDetails.jsp");
			dis1.forward(request, response);
			
			PrintWriter out = response.getWriter(); 
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Login Successfully');"); 
			out.println("location='userDetails.jsp';"); 
			out.println("</script>");

		}
		else {
			System.out.println("Error");
			response.sendRedirect("login.jsp");
		}
	
	}

}
