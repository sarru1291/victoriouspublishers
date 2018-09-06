<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Log In</title>
<style>
*{
box-sizing:border-box;}
body{
margin:0px;
padding:0px;}
.adminloginbox{
		text-align:center;
		margin-top:200px;
	}
.adminloginbox input{
		padding:10px;
		margin-bottom:20px;
		width:300px;
}
h2{
		text-align:center;
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
			
			<h2 >Admin Log In</h2>
		<div class="adminloginbox">

	 <form action="adminlogincheck.jsp" method="post">
	<input type="text" required placeholder="Enter Username" name="username"><br>
	<input type="password" required placeholder="Enter Password" name="password"><br>
	<input type="submit" value="Log In" >
	</form>

    </div>
</body>
</html>