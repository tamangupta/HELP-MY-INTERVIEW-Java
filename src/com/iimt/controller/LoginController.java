package com.iimt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iimt.dao.UserDAO;
import com.iimt.dao.UserDAOImpl;
import com.iimt.model.User;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
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
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Read the data from HTTP Request
		String emailAddress = request.getParameter("emailAddress");
		String password = request.getParameter("password");
		// create the user object
		User user = new User();
		// set the data to user object
		user.setEmailAddress(emailAddress);
		user.setPassword(password);
		// create the DAO object
		UserDAO dao = new UserDAOImpl();
		boolean valid = dao.isValidUser(user);
		String st = dao.getUserType(emailAddress);
		RequestDispatcher rd = null;
		if (valid) {
			if (st.equalsIgnoreCase("admin")) {
				request.setAttribute("msg", "Login Success");
				rd = request.getRequestDispatcher("admindashboard.jsp");
			} else if (st.equals("user") || st.equals("User") || st.equals("USER")) {
				request.setAttribute("msg", "Login Success");
				rd = request.getRequestDispatcher("userdashboard.jsp");
			} else {
				request.setAttribute("msg", "Invalid User Type");
				rd = request.getRequestDispatcher("login.jsp");
			}
		} else {
			request.setAttribute("msg", "Enter valid  username or password");
			rd = request.getRequestDispatcher("login.jsp");
		}
		rd.forward(request, response);
	}

}
