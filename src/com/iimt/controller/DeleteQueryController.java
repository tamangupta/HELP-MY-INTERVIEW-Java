package com.iimt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iimt.dao.QueryDAO;
import com.iimt.dao.QueryDAOImpl;
import com.iimt.dao.UserDAO;
import com.iimt.dao.UserDAOImpl;

/**
 * Servlet implementation class DeleteQueryController
 */
@WebServlet("/DeleteQueryController")
public class DeleteQueryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteQueryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//read data from http
		HttpSession session = request.getSession(false);
		RequestDispatcher dispatcher =null;
		if (session != null) {
				String emailAddress = request.getParameter("emailAddress");
				QueryDAO dao=new QueryDAOImpl();
				 String res = dao.deleteQuery(emailAddress);
				 if(res.equals("SUCCESS")) {
						request.setAttribute("msg", "Query Deleted Successfully");
					 dispatcher = request.getRequestDispatcher("deletequery.jsp");
				 }else {
						request.setAttribute("msg", "Query Deletion Failed");
					 dispatcher = request.getRequestDispatcher("deletequery.jsp");
				 }
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			dispatcher = request.getRequestDispatcher("login.jsp");
		}
		dispatcher.forward(request, response);
	}

}
