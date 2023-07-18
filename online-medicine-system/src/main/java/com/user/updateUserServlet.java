package com.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateUserServlet
 */
@WebServlet("/updateUserServlet")
public class updateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String rePassword = request.getParameter("rePassword");
		String contact = request.getParameter("contact");
		
		boolean isTrue;
		
		isTrue= usersDBUtil.updateUser(id, name, email, password, rePassword,  contact);
		
		if(isTrue == true) {
			
			List<User> userDetail = usersDBUtil.getDetails(id);
			request.setAttribute("userDetail", userDetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("userDetails.jsp");
			dis.forward(request, response);
			
		}
		else {
			
			List<User> userDetail = usersDBUtil.getDetails(id);
			request.setAttribute("userDetail", userDetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("userDetails.jsp");
			dis.forward(request, response);
			}
		
	}

}
