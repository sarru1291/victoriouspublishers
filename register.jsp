<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DatabaseManager" %>
  <%
		String username=(String) session.getAttribute("username");
		String password=(String) session.getAttribute("password");
		
	
	if(username==null || password==null){
		%><%@ include file="header.jsp"%>
	<%}
	else{%><%@ include file="loggedinheader.jsp"%><%
		
	}
		
%>
<%@ include file="navigation.html"%>
<%@ include file="certificate.html"%>
<%@ include file="social.html"%>
<%@ include file="subscribebox.html"%> 
<jsp:useBean id="user" class="bean.User"/>
<jsp:setProperty property="*" name="user"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register | Victorious Publishers (INDIA)</title>
<style>

           .button{
    border: none;
     background-color: #5294e2;
    color: white;
    height: 40px;
    width: 100px;
    font-size: 18px;
    text-align: center;
    font-family: berlinBold;
    border-radius: 20px;
}
.button:hover{
   background-color:#353945; 
   color:white;   
}  
.button:active{
		background-color:#5294e2;
		color:white;
}
</style>
</head>
<body>
<% int i=DatabaseManager.registerUser(user);

	if(i==1){
		out.print("<html><head><style>#message{border: 2px solid #355945;background-color: #c7c7c7;margin: 100px  200px  400px 350px;width:700px; padding-left:30px;");
	    out.print("padding-right:30px;padding-bottom:10px;padding-top:10px;border-radius:10px;} #message a{color:brown;text-decoration:underline;} #message a:hover{color:white;} #message a:active{color:brown;}</style></head><body>");
	    out.print("<div id=\"message\">  Thank You! You have registered successfully. <br>Click <a href=\"loginpage.jsp\"> here</a> to Login.</div></body></html>");
	 
			}
	else{
		
		request.getRequestDispatcher("registerpage.jsp").include(request, response);
	}
%>
</body>
</html>