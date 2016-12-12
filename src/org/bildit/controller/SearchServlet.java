package org.bildit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bildit.model.contact.Contact;
import org.bildit.model.contact.ContactDao;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String match = request.getParameter("match");
		List<Contact> contacts = new ArrayList<>();
		ContactDao contactDao = new ContactDao();
		contacts = contactDao.readMatchedContacts(match);
		
		if (contacts.isEmpty()) {
			request.setAttribute("screen", "No contacts!");
			request.getRequestDispatcher("welcome.jsp").forward(request, response);	
		} else {
			request.setAttribute("contacts", contacts);
			request.getRequestDispatcher("contacts.jsp").forward(request, response);
		}
	}

}
