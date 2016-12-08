package org.bildit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bildit.model.contact.Contact;
import org.bildit.model.contact.ContactDao;
import org.bildit.model.user.User;

@WebServlet("/AddContactServlet")
public class AddContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = (User)request.getSession().getAttribute("user");
		
		Contact contact = new Contact();
		contact.setFirstName(request.getParameter("firstName"));
		contact.setLastName(request.getParameter("lastName"));
		contact.setPhoneNumber(request.getParameter("phoneNumber"));
		contact.setAddress(request.getParameter("address"));
		contact.setEmail(request.getParameter("email"));
		contact.setUserId(user.getId());
		
		ContactDao contactDao = new ContactDao();
		boolean result = contactDao.createContact(contact);
		if(result) {
			request.setAttribute("screen", "Contact successfuly added!");
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		} else {
			request.setAttribute("screen", "Error! Try again");
			response.sendRedirect("addContact.jsp");
		}	
	}

}
