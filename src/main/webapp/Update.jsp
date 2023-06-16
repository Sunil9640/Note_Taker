<%@page import="com.entities.Note"%>
<%@page import="com.helper.SessionHelper"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit page</title>
<%@include file="Css_jc.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<br>
	<div class="container text-center">
		<h2>This is edit page:</h2>
		
		</div>

			<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());

			Session s = SessionHelper.getFactory().openSession();
			Note note=(Note)s.get(Note.class, noteId);
			    
				%>	
				
				
<form action="UpdateServlet" method="post">

		<div class="container" text-center>
			<input value="<%=note.getId()%>" name="noteid" type="hidden" />
			<div class="form-group">
				<label for="title">Form Title</label> <input type="text"
					name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter your title"
					value="<%=note.getTitle()%>" required />
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required id="content" name="content"
					placeholder="Enter your text here.. " class="form-control"
					style="height: 200px;"><%=note.getContent()%>
				</textarea>


			</div>

			<div class="container-submit">
				<div class="container text-center">
					<button type="submit" class="btn btn-success"">Save</button>
				</div>
			</div>
		</div>

	</form>

</body>
</html>	