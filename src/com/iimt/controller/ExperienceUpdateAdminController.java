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
import com.iimt.dao.UserDAO;
import com.iimt.dao.UserDAOImpl;
import com.iimt.model.Feedback;
import com.iimt.model.User;

/**
 * Servlet implementation class ExperienceUpdateAdminController
 */
@WebServlet("/ExperienceUpdateAdminController")
public class ExperienceUpdateAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExperienceUpdateAdminController() {
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
				String companyName = request.getParameter("companyName");
				String post = request.getParameter("post");
				String salary = request.getParameter("salary");
				String emailAddress = request.getParameter("emailAddress");
				String year = request.getParameter("year");
				String experience = request.getParameter("experience");
				//create the user object
				Feedback feedback = new Feedback();
				//set the values
				feedback.setCompanyName(companyName);
				feedback.setPost(post);
				feedback.setSalary(salary);
				feedback.setEmailAddress(emailAddress);
				feedback.setYear(year);
				feedback.setExperience(experience);
				
				FeedbackDAO dao = new FeedbackDAOImpl();
				String res = dao.UpdateExp(feedback);
				if(res.equals("SUCCESS")) {
					request.setAttribute("msg", "Update Experience Success");
					rd = request.getRequestDispatcher("findexpupdate.jsp");
				}else {
					request.setAttribute("msg", "Update Experience Failure");
					rd = request.getRequestDispatcher("findexpupdate.jsp");
				}
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			rd = request.getRequestDispatcher("login.jsp");
		}
				rd.forward(request, response);
	}
}
