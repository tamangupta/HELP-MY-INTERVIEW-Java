package com.iimt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iimt.dao.GroupDAO;
import com.iimt.dao.GroupDAOImpl;

/**
 * Servlet implementation class DeleteAnsAdminController
 */
@WebServlet("/DeleteAnsAdminController")
public class DeleteAnsAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteAnsAdminController() {
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
		HttpSession session = request.getSession(false);
		RequestDispatcher dispatcher = null;
		if (session != null) {
		dispatcher =request.getRequestDispatcher("deletediscussionbyadmin.jsp");
		GroupDAO dao = new GroupDAOImpl();
		 String res = dao.deleteAllAns();
		 if(res.equals("SUCCESS")) {
				request.setAttribute("msg", "All Answers Deleted Successfully");
			 dispatcher = request.getRequestDispatcher("deletediscussionbyadmin.jsp");
		 }else {
				request.setAttribute("msg", "Answer Deletion Failed");
			 dispatcher = request.getRequestDispatcher("deletediscussionbyadmin.jsp");
		 }
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			dispatcher = request.getRequestDispatcher("login.jsp");
		}
		 dispatcher.forward(request, response);
	}

}
