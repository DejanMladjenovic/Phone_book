package org.bildit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bildit.model.contact.ContactDao;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("delete");
		ContactDao contactDao = new ContactDao();
		boolean result = contactDao.deleteContact(Integer.parseInt(id));
		
		if (result) {
			request.setAttribute("screen", "Contact removed!");
		} else {
			request.setAttribute("screen", "Error remove contact!");
		}
		request.getRequestDispatcher("welcome.jsp").forward(request, response);
	}

}
