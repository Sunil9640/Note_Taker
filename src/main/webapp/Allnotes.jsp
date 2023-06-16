<%@page import="java.io.PrintWriter"%>
<%@page import="org.w3c.dom.ls.LSOutput"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.SessionHelper"%>
<%@page import="com.entities.*"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Notes Tracker</title>
<%@include file="Css_jc.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<br>
	<h2>All Notes:</h2>
	<div class="row">

		<div class="col-12">

			<%
			Session s = SessionHelper.getFactory().openSession();
			Query q = s.createQuery("from Note");
			List<Note> list = q.list();
			for (Note note : list) {
				// out.println(note.getId() + "   " + note.getContent() + "  : " + note.getTitle() + "<br>");
				%>
				

		
				
				<div class="card mt-3" style="width: 70rem;">
  <img src="img/pencil.png" style="max-width:40px;" class="card-img-top ml-5 " >
  <div class="card-body px-10">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <div class="container text-right mt-4">
    <a href="DeleteSevlet?Note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="Update.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Edit</a> 
    </div>
    
  </div>
</div>
			<%
			}
			s.close();
			%>



		</div>

	</div>
	


</body>
</html>