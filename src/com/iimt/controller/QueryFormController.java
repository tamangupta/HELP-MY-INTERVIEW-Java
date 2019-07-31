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
import com.iimt.model.QueryForm;

/**
 * Servlet implementation class QueryFormController
 */
@WebServlet("/QueryFormController")
public class QueryFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryFormController() {
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
		RequestDispatcher rd = null;
		if (session != null) {
		String name = request.getParameter("Name");
		String email = request.getParameter("Email");
		String subject = request.getParameter("Subject");
		String message = request.getParameter("Message");
		
		QueryForm q = new QueryForm();
		q.setName(name);
		q.setEmail(email);
		q.setSubject(subject);
		q.setMessage(message);
		
		QueryDAO dao = new QueryDAOImpl();
		String res = dao.insertQuery(q);
		if(res.equals("SUCCESS")) {
			request.setAttribute("msg", "Query Posted Success");
			rd = request.getRequestDispatcher("index.jsp");
		}else {
			request.setAttribute("msg", "Query Post Failed");
			rd = request.getRequestDispatcher("index.jsp");
		}
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			rd = request.getRequestDispatcher("login.jsp");
		}
		rd.forward(request, response);
	}

}
