<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Publish | Victorious Publishers (INDIA)</title>
<style >
@font-face{
    font-family:berlin;
    src:url("font/berlin.ttf");
} 
@font-face{
    font-family:berlinBold;
    src:url("font/berlinBold.ttf");
} 
 
@font-face{
    font-family:elegantLux;
    src:url("font/elegantLux.otf");
} 
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

			
		
<%@ include file="footer.jsp"%>
</body>
</html>