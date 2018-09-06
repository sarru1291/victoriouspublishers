<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="admin.AdminDatabaseManager" %>
    <%
		String username=(String) session.getAttribute("username");
		String password=(String) session.getAttribute("password");
		
	
	if(username==null || password==null){
		response.sendRedirect("admin_login.jsp");
	}
		
%>
<jsp:useBean id="book" class="bean.Book"></jsp:useBean>
<jsp:setProperty property="*" name="book"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<%
	int i=AdminDatabaseManager.addBookInDatabase(book);
	
	 if(i==1){
		String statusMessage=" <html><head><style> #message{font-weight:bold;text-align:center;}</style></head><body><div id=\"message\"> Added successfully</div></body></html>";
		
		request.setAttribute("statusMessage", statusMessage);
		request.getRequestDispatcher("admin_main.jsp").forward(request,response);
	}
	else{
		String statusMessage=" <html><head><style> #message{font-weight:bold;text-align:center;}</style></head><body><div id=\"message\"> Failed to upload</div></body></html>";
		request.setAttribute("statusMessage", statusMessage);
		request.getRequestDispatcher("admin_main.jsp").forward(request,response);
	} 
	
	%>	
	
</body>
</html>