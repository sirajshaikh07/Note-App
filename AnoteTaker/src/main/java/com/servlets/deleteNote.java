package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.SessionFactoryProvider;

/**
 * Servlet implementation class deleteNote
 */
public class deleteNote extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		
		Session s=SessionFactoryProvider.getSessionFactory().openSession();
		Transaction t=s.beginTransaction();
		Notes n=(Notes)s.get(Notes.class, id);
		s.delete(n);
		t.commit();
		
		s.close();
		response.sendRedirect("displaynotes.jsp");
		
	}

	

}
