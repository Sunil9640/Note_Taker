package com.Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.SessionHelper;


public class SaveNoteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveNoteServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String title=request.getParameter("title");
			String content=request.getParameter("content");
		
			Note note=new Note( title,  content, new Date());
			System.out.println(note.getId()+":"+ note.getTitle());
			
			
			// hibernate connection 
			
		Session s=SessionHelper.getFactory().openSession();
		Transaction tx =s.beginTransaction();
		s.save(note);
		tx.commit();
		
		s.close();
		response.setContentType("text/html");
		PrintWriter printWriter=response.getWriter();
		
		printWriter.println("<h1 style='text-align:center; color:red;'>note is added successfully</h1>");
		printWriter.println("<h1 style='text-align:center;'><a href='Allnotes.jsp'> View all Notes</a></h1>");
			
		
		}catch(Exception e){
			e.printStackTrace();
			
		}
	}

}
