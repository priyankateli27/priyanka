package com.niit.apple;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dopost");
		String UserId=request.getParameter("userID");
		String Password=request.getParameter("password");
		

		LoginDAO loginDAO=new LoginDAO();
		
		RequestDispatcher dispatcher;
		
		if(loginDAO.isValidUser(UserId,Password)==true)
		{
			dispatcher=request.getRequestDispatcher("home.html");
			dispatcher.forward(request,response);
			
		}
		else{
			dispatcher=request.getRequestDispatcher("Login.html");
		    PrintWriter writer=response.getWriter();
			writer.append("Invalid credential... Please try again.");
			dispatcher.include(request,response);
		}
	}

}
