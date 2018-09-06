<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			
			<%
	String username=request.getParameter("username");
String password=request.getParameter("password");
	if(username.equals("admin") && password.equals("admin")){
		
		session.setAttribute("username", username);
		session.setAttribute("password", password);
		response.sendRedirect("admin_main.jsp");
		
	}
	else{
		String errorMessage=" <html><head><style> #message{color:red;margin:10px 300px 0px 500px;}</style></head><body><div id=\"message\"> <span style=\"padding-bottom:40px;\">Incorrect Username/Password.<span></div></body></html>";
		request.setAttribute("errorMessage",errorMessage);
		 request.getRequestDispatcher("admin_login.jsp").forward(request,response);
		
	}
%>
</body>
</html>