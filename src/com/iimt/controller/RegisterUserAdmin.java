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
 * Servlet implementation class RegisterUserAdmin
 */
@WebServlet("/RegisterUserAdmin")
public class RegisterUserAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUserAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Read data from HTTP
				String firstName = request.getParameter("firstName");
				String lastName = request.getParameter("lastName");
				String emailAddress = request.getParameter("emailAddress");
				String mobileNumber = request.getParameter("mobileNumber");
				String password = request.getParameter("password");
				String userType = request.getParameter("userType");
				//create the user object
				User user = new User();
				//set the values
				user.setFirstName(firstName);
				user.setLastName(lastName);
				user.setEmailAddress(emailAddress);
				user.setMobilenumber(mobileNumber);
				user.setPassword(password);
				user.setUserType(userType);
				UserDAO dao = new UserDAOImpl();
				String res = dao.insert(user);
				RequestDispatcher rd = null;
				if(res.equals("SUCCESS")) {
					request.setAttribute("msg", "Registration Success");
					rd = request.getRequestDispatcher("admindashboard.jsp");
				}else {
					request.setAttribute("msg", "Registration Failed");
					rd = request.getRequestDispatcher("admindashboard.jsp");
				}
				rd.forward(request, response);
	}

}
