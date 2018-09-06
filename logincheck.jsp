<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="com.DatabaseManager" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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

<%
	String username=request.getParameter("username");
String password=request.getParameter("password");

boolean result = DatabaseManager.isValidate(username, password);
	if(result){
		
		session.setAttribute("username", username);
		session.setAttribute("password", password);
		
		response.sendRedirect("loggedinpage.jsp");
		
	}
	else{
		String errorMessage=" <html><head><style>#message img{height:20px;width:20px;padding-right:4px;} #message{color:red;margin:10px 300px 0px 500px;}</style></head><body><div id=\"message\"> <img src=\"images/others/incorrect.png\"><span style=\"padding-bottom:40px;\">Incorrect Username/Password.<span></div></body></html>";
		request.setAttribute("errorMessage",errorMessage);
		 request.getRequestDispatcher("loginpage.jsp").forward(request,response);
		
	}
%>
</body>
</html>