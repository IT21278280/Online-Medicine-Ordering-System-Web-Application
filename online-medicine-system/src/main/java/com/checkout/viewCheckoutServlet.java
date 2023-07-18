package com.checkout;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phramacy.Pharamacy;
import com.phramacy.phramacyDBUtil;

/**
 * Servlet implementation class viewCheckoutServlet
 */
@WebServlet("/viewCheckoutServlet")
public class viewCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewCheckoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int pId = Integer.parseInt(request.getParameter("id"));
        checkoutDBUtil dao = new checkoutDBUtil();
         
        try {
            Checkout checkout = ((checkoutDBUtil) dao).get(pId);
             
            request.setAttribute("pId", pId);
             
            String page = "/index.jsp";
            RequestDispatcher requestDispatcher = request.getRequestDispatcher(page);
            requestDispatcher.forward(request, response);              
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
         
    }

}
