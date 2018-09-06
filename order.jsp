<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ include file="loggedinheader.jsp"%>
<%@ include file="navigation.html"%>
<%@ include file="certificate.html"%>
<%@ include file="social.html"%>
<%@ include file="subscribebox.html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
<style>
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
.place_order_container{
		width:100%;
		height:500px;
		text-align:center;
		padding-top:60px;
		font-size:30px;		
}
.place_order_container input{
	padding:10px;
	margin:20px 0px 10px 0px;
	width:300px;
	height:auto;
}
#placeorderbutton{
	background-color:#e3e978;
	border:none;
	color:black;
	font-family:droidsansbold;
}
#placeorderbutton:hover{
	background-color:green;
	color:white;
}
#placeorderbutton:active{
	background-color:#e3e978;
}
</style>
</head>
<body>
		<%
		String bid=request.getParameter("bid");
		
		String username=(String) session.getAttribute("username");
		String password=(String) session.getAttribute("password");
		if(username==null&&password==null){
			response.sendRedirect("loginpage.jsp");
		}
		else{
					%>
					<div class="place_order_container">
					<b>Write your Delivery Address:</b><br>
					<form  action="ordernow.jsp?bid=<%=bid %>" method="post">
					<input type="text" name="addressline1" placeholder="Address line 1" required><br>
					<input type="text" name="addressline2" placeholder="Address line 2"><br>
					<input type="submit" value="Place Order" id="placeorderbutton">
					
					</form>
					</div>
					<%
		}
		%>
		
		 <%@ include file="footer.jsp"%>
</body>
</html>