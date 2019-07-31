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

import com.iimt.dao.GroupDAO;
import com.iimt.dao.GroupDAOImpl;
import com.iimt.model.GroupAns;
import com.iimt.model.GroupDis;

/**
 * Servlet implementation class QuestionDisplay
 */
@WebServlet("/QuestionDisplay")
public class QuestionDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionDisplay() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		RequestDispatcher dispatcher =null;
		if (session != null) {
		dispatcher = request.getRequestDispatcher("groupdiscussion.jsp");
		GroupDAO dao = new GroupDAOImpl();
		List<GroupDis> list = dao.getAllQuestion();
		List<GroupAns> list1 = dao.getAllAnswer();
		request.setAttribute("list", list);
		request.setAttribute("list1", list1);
		 request.getRequestDispatcher("groupdiscussion.jsp");
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
