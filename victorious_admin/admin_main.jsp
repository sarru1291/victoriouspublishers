<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<style>

.addauthor textarea{
	width:800px;
	height:300px;
}


</style>
</head>
<body>

<%@ page import="admin.AdminDatabaseManager" %>
<%		String statusMessage=(String)request.getAttribute("statusMessage");
			if(statusMessage==null){
				
			}
			else{
			out.print(statusMessage);
		}%>
<%
		String username=(String) session.getAttribute("username");
		String password=(String) session.getAttribute("password");
	if(username==null&&password==null){
		response.sendRedirect("admin_login.jsp");
	}
	%>
		
	<h1>Welcome to Admin Account</h1>
		
 <a href="admin_logout.jsp">	<button type="button" style="margin-left:1000px">Log out</button></a><br>
 <div class="admin_options">
 		<a href="admin_addbook.jsp">Add new book to database </a><br>
		<a href="admin_addauthor.jsp">Add new author to database</a><br>
		<a href="admin_customerorder.jsp">Customer Orders</a>
		
	</div>
		
</body>
</html>