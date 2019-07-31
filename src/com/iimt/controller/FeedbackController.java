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
 * Servlet implementation class FeedbackController
 */
@WebServlet("/FeedbackController")
public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FeedbackController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		RequestDispatcher rd = null;
		if (session != null) {
		String companyName =request.getParameter("companyName");
        String post=request.getParameter("post");
        String salary = request.getParameter("salary");
        String emailAddress =request.getParameter("emailAddress");
        String year =request.getParameter("year");
        String experience =request.getParameter("experience");
        
        Feedback feedback = new Feedback();
        //set  the data to use object
        feedback.setCompanyName(companyName);
        feedback.setPost(post);
        feedback.setSalary(salary);
        feedback.setExperience(experience);
        feedback.setEmailAddress(emailAddress);
       feedback.setYear(year);
        FeedbackDAO dao = new FeedbackDAOImpl();
        String res = dao.postfeed(feedback);
 
        if(res.equals("SUCCESS")) {
        	request.setAttribute("msg", "Feedback Posted Success");
        	rd = request.getRequestDispatcher("userdashboard.jsp"); 	
        }else {
        	request.setAttribute("msg", "Feedback Posted Failure");
        	rd = request.getRequestDispatcher("feedback.jsp"); 	
        }
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			rd = request.getRequestDispatcher("login.jsp");
		}
        rd.forward(request, response);
        }
	}
