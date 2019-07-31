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
import com.iimt.dao.UserDAO;
import com.iimt.dao.UserDAOImpl;

/**
 * Servlet implementation class DeleteGroupDisAdminController
 */
@WebServlet("/DeleteGroupDisAdminController")
public class DeleteGroupDisAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteGroupDisAdminController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		RequestDispatcher dispatcher = null;
		if (session != null) {
			// read data from http		
			dispatcher = request.getRequestDispatcher("deletequestiongdadmin.jsp");
			int id = Integer.parseInt(request.getParameter("id"));
			GroupDAO dao = new GroupDAOImpl();
			String res = dao.deleteQues(id);
			if (res.equals("SUCCESS")) {
				request.setAttribute("msg", "Question Deleted Successfully");
				dispatcher = request.getRequestDispatcher("deletequestiongdadmin.jsp");
			} else {
				request.setAttribute("msg", "Question Deletion Failed");
				dispatcher = request.getRequestDispatcher("deletequestiongdadmin.jsp");
			}
			
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			dispatcher = request.getRequestDispatcher("login.jsp");
		}
		dispatcher.forward(request, response);
	}

}
