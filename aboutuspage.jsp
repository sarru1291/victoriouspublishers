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
    <title>About Us | Victorious Publishers (INDIA)</title>
    </head>
    <style>
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
.aboutuscontainer{
	padding-bottom:30px;
	padding-top:30px;
}
.aboutuscontainer .heading{
font-family:elegantLux;
padding-left:50px;
height:50px;
font-size:30px;
font-weight:bold;
background-color:#ebda82;
padding-top:5px;
padding-bottom:5px;
color:brown;
}
.aboutuscontainer .subheading{
font-family:elegantLux;
padding-left:50px;
font-size:25px;
font-weight:bold;
color:brown;
}
.aboutuscontainer p{
font-family:elegantLux;
font-size:20px;
margin-left:50px;
margin-right:20px;}
.aboutuscontainer ul{
margin-left:50px;
font-family:elegantLux;
font-size:20px;
}
    </style>
<body>
  
<div class="aboutuscontainer">
    <div class="heading">About us</div>
<p>We would like to introduce Victorious Publishers (India) to your esteemed organisation for publishing activities like: editing, proofreading, cover designing, printing, etc. Victorious Publishers (India) publish conference/symposia/workshop proceedings in the book form. With the advancement in technology, the publications are increasingly needed in convenient electronic formats like CD-ROMs or DVD-ROMs web based publications. If need be Victorious Publishers (India) will also provide CD-ROMs or DVD-ROMs. Our team is thoroughly professional and very resourceful.
<br><br> We offer best-in-class publishing services. Victorious Publishers (India) meet the new challenges and help the customers by providing cost-effective and highest quality standard publications. We promise you to deliver the print proceedings to conference venue on scheduled time.
<br><br>
</p>
<div class="heading">Our Job Expertise</div>
    
   <br>
<div class="subheading" >Publishing</div>
 		
 		<ul>
 			<li>Journal/Magazine</li>
 			<li>Proceedings of conference/symposia/workshop</li>
 			<li>Souvenir</li>
 			<li>Abstract booklet</li>
 			<li>Pamphlet/Banner</li>
    </ul>
    <div class="subheading"> Others Services</div>
    <ul>
 			<li>e-publishing: Producing e-proceedings in the form of CD-ROMs or DVD-ROMs for processing files</li>
 			<li>Checking the layout/style consistency in headers which includes titles, author, affiliation, e-mail abstract and keywords</li>
 			<li>Preparing table of contents, preliminary pages and author index</li>
 			<li>Cover Designing</li>
            <li>Obtaining ISBN number(if required)</li>
            <li>Printing, binding and lamination as per specifications</li>
            <li>Deliver the print proceedings to the conference venue</li>
            <li> Arrange sales/market support with our business partners</li>
 		</ul>
 		<br>
<hr>
<br>

    <div class="subheading"> Victorious Publishers (INDIA)</div>
    <p>
108, Lakhi Public School,Sarpanch Ka Bara, <br>
Fazalpur Road, Mandawali, Delhi-110092<br>
Mob.: +91 8826941497 (Sanjay Kumar Singh)<br>
E-mail: victoriouspublishers12@gmail.com
</p>
</div>
 <%@ include file="footer.jsp"%>



</body>
</html>