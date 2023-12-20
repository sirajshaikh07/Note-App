package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Timestamp;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.SessionFactoryProvider;

/**
 * Servlet implementation class AddNote
 */
public class AddNote extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			java.util.Date currentDate = new java.util.Date();
            Timestamp timestamp = new Timestamp(currentDate.getTime());
		     System.out.println(timestamp.toLocalDateTime());
		     Notes note=new Notes(title,content,timestamp.toLocalDateTime());
		     
		     Session s=SessionFactoryProvider.getSessionFactory().openSession();
		     Transaction t=s.beginTransaction();
		     s.save(note);
		     t.commit();
		     s.close();	
		     response.sendRedirect("added.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		     
	     
	     
	        
		
	}

}
