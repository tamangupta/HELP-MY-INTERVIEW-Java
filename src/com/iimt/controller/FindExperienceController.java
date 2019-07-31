package com.iimt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iimt.dao.FeedbackDAO;
import com.iimt.dao.FeedbackDAOImpl;
import com.iimt.model.Feedback;

/**
 * Servlet implementation class FindExperienceController
 */
@WebServlet("/FindExperienceController")
public class FindExperienceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindExperienceController() {
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
				//Read data from HTTP
				String email = request.getParameter("email");
				
				FeedbackDAO dao = new FeedbackDAOImpl();
				Feedback feedback = dao.findExp(email);
				if(feedback!=null) {
				request.setAttribute("feedback", feedback);
				rd = request.getRequestDispatcher("findexpupdate.jsp");
				}else {
					request.setAttribute("msg", "Enter valid EmailId");
					rd = request.getRequestDispatcher("findexpupdate.jsp");
				}
			}else {
				request.setAttribute("msg", "Please Login To Access Into Website");
				rd = request.getRequestDispatcher("login.jsp");
			}
				rd.forward(request, response);	
	}

}
