package com.iimt.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iimt.dao.GroupDAO;
import com.iimt.dao.GroupDAOImpl;
import com.iimt.model.GroupDis;

/**
 * Servlet implementation class PostGroupDisAdminController
 */
@WebServlet("/PostGroupDisAdminController")
public class PostGroupDisAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostGroupDisAdminController() {
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
		dispatcher =request.getRequestDispatcher("postgroupdisbyadmin.jsp");
		String question= request.getParameter("question");
		GroupDis gd = new GroupDis();
		gd.setQuestion(question);
		GroupDAO dao = new GroupDAOImpl();
		String res = dao.postQues(gd);
		RequestDispatcher rd = null;
		if(res.equals("SUCCESS")) {
			request.setAttribute("msg", "Question Posted Success");
			dispatcher = request.getRequestDispatcher("postgroupdisbyadmin.jsp");
		}else {
			request.setAttribute("msg", "Question Post Failed");
			dispatcher = request.getRequestDispatcher("postgroupdisbyadmin.jsp");
		}
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			dispatcher = request.getRequestDispatcher("login.jsp");
		}
		dispatcher.forward(request, response);
	}

}
