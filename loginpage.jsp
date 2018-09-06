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
<title>Log In | Victorious Publishers (INDIA)</title>
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
        .loginbox{
            height: 500px;
            width: 300px;
            text-align:center;
            padding-top:70px;
            margin-left:500px;
            margin-right:350px;
        }
        .loginbox input{
        	padding:10px;
        	margin-bottom:20px;
        	width:300px;
        	border:1px solid #5294e2;
        	border-radius:5px;        	
        }
        .loginbox input:focus{
        border:1px solid #5294e2;
        box-shadow:0px 0px 5px  #5294e2;
        }
        
  .loginboxloginbutton{
    border: none;
     background-color: #5294e2;
    color: white;
    height: 40px;
    width: 300px;
    font-size: 18px;
    text-align: center;
    font-family: berlinBold;
    border-radius: 20px;
}
   .loginboxloginbutton:hover{
   background-color:#353945; 
   color:white;
   border:1px solid #353945;   
}
.loginboxloginbutton:active{
 background-color: #5294e2;
    color: white;
}
.loginbox a{
		text-decoration:underline;
		color:#5294e2;
}
.loginbox a:hover{
		text-decoration:underline;
		color:#252945;
}
.loginbox a:active{
		text-decoration:underline;
		color:#5294e2;
}
       
    </style>
</head>
<body>
<%		String errorMessage=(String)request.getAttribute("errorMessage");
			if(errorMessage==null || errorMessage.equals("")){
				
			}
			else{
			out.print(errorMessage);
			}%>
			
<div class="loginbox">
 <form action="logincheck.jsp" method="post">
<input type="text" required placeholder="Enter Username" name="username"><br>
<input type="password" required placeholder="Enter Password" name="password"><br>
<input type="submit" value="Log In"  class="loginboxloginbutton">
</form><br>
Not Registered? Click<b> <a href="registerpage.jsp">here</a></b> to Register.
    </div>
 <%@ include file="footer.jsp"%>
</body>
</html>