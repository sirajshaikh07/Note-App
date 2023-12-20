package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.SessionFactoryProvider;

/**
 * Servlet implementation class update
 */
public class update extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		int id=Integer.parseInt(request.getParameter("id"));
		LocalDate date;
		Session s=SessionFactoryProvider.getSessionFactory().openSession();
		Transaction t=s.beginTransaction();
		Notes n=(Notes)s.get(Notes.class, id);
		n.setNoteContent(content);
		n.setNoteTitle(title);
		t.commit();
		response.sendRedirect("displaynotes.jsp");
		
	}

}
