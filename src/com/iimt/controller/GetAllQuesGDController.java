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
import com.iimt.model.GroupDis;

/**
 * Servlet implementation class GetAllQuesGDController
 */
@WebServlet("/GetAllQuesGDController")
public class GetAllQuesGDController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllQuesGDController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		RequestDispatcher rd = null;
		if (session != null) {
		rd = request.getRequestDispatcher("displayallquestiontoadmin.jsp");
		GroupDAO dao = new GroupDAOImpl();
		List<GroupDis> list = dao.getAllQuestion();
		request.setAttribute("list", list);
		 request.getRequestDispatcher("displayallquestionstoadmin.jsp");
		}else {
			request.setAttribute("msg", "Please Login To Access Into Website");
			rd = request.getRequestDispatcher("login.jsp");
		}
		 rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
