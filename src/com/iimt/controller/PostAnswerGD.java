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
import com.iimt.model.GroupAns;
import com.iimt.model.GroupDis;

/**
 * Servlet implementation class PostAnswerGD
 */
@WebServlet("/PostAnswerGD")
public class PostAnswerGD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostAnswerGD() {
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
		RequestDispatcher rd = null;
		if (session != null) {
		String fullName= request.getParameter("fullName");
		String answer= request.getParameter("answer");
		GroupAns gda = new GroupAns();
		gda.setFullName(fullName);
		gda.setAnswer(answer);
		GroupDAO dao = new GroupDAOImpl();
		String res = dao.postAns(gda);
		if(res.equals("SUCCESS")) {
			request.setAttribute("msg", "Answer Posted Success");
			rd = request.getRequestDispatcher("QuestionDisplay");
		}else {
			request.setAttribute("msg", "Question Post Failed");
			rd = request.getRequestDispatcher("QuestionDisplay");
		}
	}else {
		request.setAttribute("msg", "Please Login To Access Into Website");
		rd = request.getRequestDispatcher("login.jsp");
	}
		rd.forward(request, response);
	}

}
