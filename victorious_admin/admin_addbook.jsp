<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		String username=(String) session.getAttribute("username");
		String password=(String) session.getAttribute("password");
	if(username==null || password==null){
		response.sendRedirect("admin_login.jsp");
	}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin | Add new book</title>
<style >
.addbook{
		text-align:center;
		margin-top:50px;
		
	}
.addbook input{
		padding:10px;
		margin-bottom:20px;
		width:300px;
}

 .addbook textarea{
	width:800px;
	height:300px;
}
</style>
</head>
<body>
<a href="admin_main.jsp">	<button type="button" style="margin-left:1000px">Main Menu</button></a><br>
Add new book to database:<br>
			<div class="addbook">
		<form method="post" action="addnewbook.jsp" id="addbookform">
		
		<input type="text" placeholder="Enter Book Title" name="title"><br>
		<input type="text" placeholder="Enter Author Name" name="author"><br>
		<input type="text" placeholder="Enter ISBN Number" maxlength="13" name="isbn"><br>
		<input type="text" placeholder="Enter Price" name="price"><br>
		<input type="text" placeholder="Enter Language" name="language"><br>
		<input type="text" placeholder="Enter Book Format Available" name="format"><br>
		<input type="text" placeholder="Enter No. of Pages" name="page"><br>
		<input type="text" placeholder="Enter Category of Book" name="category"><br>
		<input type="file" name="bookimage"><br>
		
		<input type="submit" value="ADD"><br>
		</form>
		<textarea name="aboutbook" form="addbookform" placeholder="Enter about book" ></textarea>
		</div>
		
</body>
</html>
