package com.iimt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iimt.dao.FeedbackDAO;
import com.iimt.dao.FeedbackDAOImpl;
import com.iimt.dao.GroupDAO;
import com.iimt.dao.GroupDAOImpl;

/**
 * Servlet implementation class DeleteExpAdminController
 */
@WebServlet("/DeleteExpAdminController")
public class DeleteExpAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteExpAdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		RequestDispatcher dispatcher = null;
		if (session != null) {
		dispatcher =request.getRequestDispatcher("deletequestiongdadmin.jsp");
		String email = request.getParameter("email");
		FeedbackDAO dao = new FeedbackDAOImpl();
		 String res = dao.deleteExp(email);
		 if(res.equals("SUCCESS")) {
				request.setAttribute("msg", "Experience Deleted Successfully");
			 dispatcher = request.getRequestDispatcher("deleteexpadmin.jsp");
		 }else {
				request.setAttribute("msg", "Experience Deletion Failed");
			 dispatcher = request.getRequestDispatcher("deleteexpadmin.jsp");
		 }
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			dispatcher = request.getRequestDispatcher("login.jsp");
		}
		 dispatcher.forward(request, response);
	}

}
