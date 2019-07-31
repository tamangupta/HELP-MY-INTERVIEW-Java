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

import com.iimt.dao.QueryDAO;
import com.iimt.dao.QueryDAOImpl;
import com.iimt.model.QueryForm;

/**
 * Servlet implementation class DisplayQueryController
 */
@WebServlet("/DisplayQueryController")
public class DisplayQueryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayQueryController() {
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
		dispatcher = request.getRequestDispatcher("displayquery.jsp");

		 //Call the DAO
		 QueryDAO dao = new QueryDAOImpl();
		 List<QueryForm> query = dao.getAllQuery();
		 if(query!=null) {
		 request.setAttribute("query",query);
		 request.getRequestDispatcher("displayquery.jsp");
		 }else {
			 request.setAttribute("msg","No Query Is Present In Database");
			 request.getRequestDispatcher("displayquery.jsp");
		 }
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			dispatcher = request.getRequestDispatcher("login.jsp");
		}
		 dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
