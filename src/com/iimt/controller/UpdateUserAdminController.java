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
 * Servlet implementation class UpdateUserAdminController
 */
@WebServlet("/UpdateUserAdminController")
public class UpdateUserAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserAdminController() {
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
		HttpSession session = request.getSession(false);
		RequestDispatcher dispatcher= null;
		if (session != null) {
		dispatcher =request.getRequestDispatcher("updateuseradmin.jsp");
		String emailAddress= request.getParameter("emailAddress");
		System.out.println(emailAddress);
		//Call the DAO
		 UserDAO dao=new UserDAOImpl();
		 User u = dao.findByEmail(emailAddress);
		 if(u != null) {
		 request.setAttribute("user", u);
		 dispatcher= request.getRequestDispatcher("updateuseradmin.jsp");
		 }else {
			 request.setAttribute("msg", "enter valid email id*NoDataPresentWithThisId*");
			dispatcher =  request.getRequestDispatcher("updateuseradmin.jsp");
		 }
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			dispatcher = request.getRequestDispatcher("login.jsp");
		}
		 dispatcher.forward(request, response);
	}

}
