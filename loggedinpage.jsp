<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ include file="loggedinheader.jsp" %> 
<%@ include file="navigation.html"%>
<%@ include file="certificate.html"%>
<%@ include file="social.html"%>
<%@ include file="subscribebox.html"%>
<%
		String username=(String)session.getAttribute("username");
		String password=(String)session.getAttribute("password");
		if(username==null&&password==null){
			response.sendRedirect("loginpage.jsp");
		}
		else{
			
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=username %></title>
<style>
@font-face{
    font-family:droidsans;
    src:url("font/droidsans.ttf");
} 
@font-face{
    font-family:droidsansbold;
    src:url("font/droidsansbold.ttf");
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
 background-color: #5294e2;
    color: white;
}
.user_container{
	display:grid;
	height:auto;
	width:100%;
	padding:50px 0px 50px 50px;
	grid-template-areas:'user-options user-profile'
						'user-options user-profile'
						'user-options user-profile'
						'user-options user-profile'
						'user-options user-profile'
						'user-options user-profile';
}
.user_profile{
grid-area:user-profile;
width:900px;
padding:20px 10px 20px 10px;}
.user_options{
	grid-area:user-options;
	width:200px;
	height:auto;
	padding-top:20px;
	text-align:center;
}
.options_style{
	background-color:#e3e978;
	padding:10px 0px 10px 0px;
	display:block;
	margin-bottom:20px;
	color:brown;
	font-family:droidsansbold;
}
.options_style:hover{
	background-color:green;
	color:white;
}
.options_style:active{
	background-color:#e3e978;
}
</style>
</head>
<body>
		<div class="user_container">
		
		<div class="user_profile">
		<h1>Your Profile</h1><br><br>
		<b>Name: </b><%=username %>
		
		</div>
		<div class="user_options">
		<a href="#" class="options_style">Edit profile</a>
		<a href="#" class="options_style">Place Order</a>
		<a href="#" class="options_style">Publish your book</a>
		<a href="#" class="options_style">Status of your order</a>
		<a href="#" class="options_style">Status of your Book </a>
		<a href="logoutpage.jsp" class="options_style">Log Out </a>
		</div>
		
		
		</div>
		
		
		<%@ include file="footer.jsp"%>
</body>
</html>