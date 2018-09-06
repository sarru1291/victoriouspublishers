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
<%@ page import="com.DatabaseManager,java.util.*,bean.Author" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authors</title>
<style>

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
 
 .allauthor_heading{
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
 .allauthor_container{
 	display:grid;
 	grid-template-columns:repeat(3,1fr);
 	margin:30px 0px 50px 50px;
 	grid-column-gap:50px;
 	height:700px;
 	text-align:center;
 }
    .allauthor_style{
         height: 180px;
    width: 180px;  
     border: 1px solid black;
      border-radius: 50%;
      margin-bottom:40px;   
    }  
    .allauthor_style:hover{
    box-shadow: 0px 0px 20px dimgray;
    height: 200px;
    opacity:0.9;
    width:200px;
}
.allauthor_namestyle{
	font-size: 20px;
    color: black;
    font-family:berlinItalic;
    letter-spacing:1px;
}
.allauthor_namestyle:hover{
    color: #5294e2;
}
.allauthor_namestyle:active{
	color:black;
}
</style>
</head>
<body>
<div class="allauthor_heading">Our Authors</div>
<div class="allauthor_container">
			
	 <%
				ArrayList<Author> allAuthors=DatabaseManager.loadAllAuthors();
				for(int i=0;i<allAuthors.size();i++){
					Author author=allAuthors.get(i);									
		%> 
		
	<div>
	<a href="authordisplay.jsp?aid=<%=author.getAuthorimage()%>"><img src="images/allauthors/<%=author.getAuthorimage()%>.jpg"  class="allauthor_style"></a><br>
	<div class="allauthor_namestyle"><%=author.getAuthorname() %></div>
	</div>	
	
<%} %>
</div>
			

<%@ include file="footer.jsp"%>
</body>
 
</html>