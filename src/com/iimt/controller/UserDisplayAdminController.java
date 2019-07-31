package com.iimt.controller;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class UserDisplayAdminController
 */
@WebServlet("/UserDisplayAdminController")
public class UserDisplayAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDisplayAdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		RequestDispatcher dispatcher = null;
		if (session != null) {
		dispatcher = request.getRequestDispatcher("displayallusertoadmin.jsp");

		 //Call the DAO
		 UserDAO dao=new UserDAOImpl();

		 List<User> list=dao.getAllUser();
		 request.setAttribute("list", list);
		 dispatcher = request.getRequestDispatcher("displayallusertoadmin.jsp");
		}
		else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			 dispatcher = request.getRequestDispatcher("login.jsp");
		}
		 dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
