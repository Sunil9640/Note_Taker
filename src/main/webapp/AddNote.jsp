<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddNote</title>
<link href="css/style.css" rel="stylesheet"/>
<%@include file="Css_jc.jsp" %> 
</head>
<body>

<%@include file="navbar.jsp" %> 
<div class="container text-center"><h3> please fill your details.. </h2></div>
<br>

       <!--form --> 
       
       <form action="SaveNoteServelet" method="post">
       <div class="container" text-center>
  <div class="form-group">
    <label for="title">Form Title</label>
    <input  type="text" name="title"
    class="form-control" id="title" 
    aria-describedby="emailHelp" placeholder="Enter your title" required/>
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
   <textarea  required id="content" name="content" 
   placeholder="Enter your text here.. " 
   class="form-control" style="height:200px;" ></textarea>
   
   
  </div>
 
   <div class="container-submit">
   <div class="container text-center"><button type="submit" class="btn btn-primary"">Add</button></div></div>
  </div>

</form>

</body>
</html>