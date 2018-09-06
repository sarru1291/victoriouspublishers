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
    <title>Contact Us | Victorious Publishers (INDIA)</title>
    
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
 background-color: #5294e2;
    color: white;
}
      .contactuscontainer{
    margin-top:10px;
	padding-bottom:30px;
	padding-top:30px;
	height:450px;
}  
   .contactuscontainer .heading{
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
.contactuscontainer .subheading{
font-family:elegantLux;
padding-left:50px;
font-size:25px;
font-weight:bold;
color:brown;
}	
         .contactuscontainer p{
font-family:elegantLux;
font-size:20px;
margin-left:50px;
margin-right:20px;}
  .contactus_sociallink img:hover{
background-color:black;
}    
    </style>
    
    </head>

<body>
  <div class="contactuscontainer"> 
      <div class="heading">Contact Us</div><br><br>
 <div class="subheading"> Victorious Publishers (INDIA)</div>
    <p>
        Sanjay Kumar Singh (Publisher)<br>  
House No. 108, Lakhi Public School,
Sarpanch Ka Bara, Second Floor, Main Road<br>
Mandawali, Delhi-110092<br>
Mob.: +91 8826941497 (Sanjay Kumar Singh)<br>
E-mail: victoriouspublishers12@gmail.com
</p>

  <br><br>
  <div style="margin-left:500px;" class="contactus_sociallink">
  
       <a href="https://www.facebook.com/victoriouspublishers/" target="_blank" ><img  src="images/sociallinks/facebook.png" style="height:70px;width:70px;border-radius:15px;"></a>
       <a href="https://plus.google.com/117250181811062228605" target="_blank" ><img src="images/sociallinks/googleplus.png" style="height:70px;width:70px;border-radius:15px;"></a>
       <a href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=6&cad=rja&uact=8&ved=2ahUKEwjI2IuPxoDdAhUEdysKHYaZBIEQFjAFegQIBBAB&url=https%3A%2F%2Fin.linkedin.com%2Fcompany%2Fvictorious-publishers-india&usg=AOvVaw2r9eooLHRLITxZbtODxw4c" target="_blank" ><img src="images/sociallinks/linkedin.png" style="height:70px;width:70px;border-radius:15px;"></a>
       <a href="http://victoriouspublishers.blogspot.com/" target="_blank"><img src="images/sociallinks/blogger.png" style="height:70px;width:70px;border-radius:15px;"></a>
        
  </div>
</div>

 <%@ include file="footer.jsp"%>
</body>
</html>