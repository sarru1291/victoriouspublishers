<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 	String username=(String)session.getAttribute("username");
String password=(String)session.getAttribute("password");
session.invalidate();
		
		response.sendRedirect("admin_login.jsp");
		
 %>
</body>
</html>