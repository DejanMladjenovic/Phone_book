package org.bildit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bildit.model.user.User;
import org.bildit.model.user.UserDao;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		UserDao userDao = new UserDao();
		User user = userDao.readUser(username);
		System.out.println(username);
		System.out.println(password);
		
		if(user == null || !user.getUsername().equals(username)) {
			request.setAttribute("screen", "Username doesn't exists!");
			request.getRequestDispatcher("login.jsp").forward(request, response);;
		} else if (!user.getPassword().equals(password)){
			request.setAttribute("screen", "Incorrect password!");
			request.getRequestDispatcher("login.jsp").forward(request, response);;
		} else {
			request.getSession().setAttribute("user", user);
			response.sendRedirect("welcome.jsp");
		}
	}

}
