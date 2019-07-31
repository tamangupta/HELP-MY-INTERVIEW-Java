package com.iimt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iimt.dao.UserDAO;
import com.iimt.dao.UserDAOImpl;
import com.iimt.model.User;

/**
 * Servlet implementation class DeleteUserAdminController
 */
@WebServlet("/DeleteUserAdminController")
public class DeleteUserAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUserAdminController() {
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
		//read data from http
		HttpSession session = request.getSession(false);
		RequestDispatcher dispatcher = null;
		if (session != null) {
		String emailAddress = request.getParameter("emailAddress");
		UserDAO dao=new UserDAOImpl();
		 String res = dao.delete(emailAddress);
		 if(res.equals("SUCCESS")) {
				request.setAttribute("msg", "User Deleted Successfully");
			 dispatcher = request.getRequestDispatcher("deleteuseradmin.jsp");
		 }else {
				request.setAttribute("msg", "User Deletion Failed");
			 dispatcher = request.getRequestDispatcher("deleteuseradmin.jsp");
		 }
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			dispatcher = request.getRequestDispatcher("login.jsp");
		}
		 dispatcher.forward(request, response);
	}

}
