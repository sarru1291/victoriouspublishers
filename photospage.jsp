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
<title>Gallery</title>
<style>
 * {
        box-sizing: border-box;
    }
    body{
        font-family: sans-serif;
        margin: 0px;
        padding: 0px;
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
 
 .gallery_heading{
 		font-family:elegantLux;
padding-left:50px;
height:50px;
font-size:30px;
font-weight:bold;
background-color:#ebda82;
padding-top:5px;
padding-bottom:5px;
color:brown;
margin:20px  0px 20px 0px;
 }
 .allimage_container{
 	display:grid;
 	grid-template-columns:repeat(3,1fr);
 	grid-row-gap: 30px; 	
 	margin:30px 0px 50px 50px;
 }
    .allimage_style{
        width:380px; 
        height:250px;      
    }  
    .allimage_style:hover{
    box-shadow: 0px 0px 20px dimgray;
    opacity:0.9;
}
</style>
</head>
<body>
<div class="gallery_heading">Our Gallery</div>
<div class="allimage_container">
		<img src="images/gallery/01.jpg" class="allimage_style">
		<img src="images/gallery/02.jpg" class="allimage_style">
		<img src="images/gallery/03.jpg" class="allimage_style">
		<img src="images/gallery/04.jpg" class="allimage_style">
		<img src="images/gallery/05.jpg" class="allimage_style">
		<img src="images/gallery/06.jpg" class="allimage_style">
		<img src="images/gallery/07.jpg" class="allimage_style">
		<img src="images/gallery/08.jpg" class="allimage_style">
		

</div>

<%@ include file="footer.jsp"%>
</body>
 
</html>