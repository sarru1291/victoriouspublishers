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
<title>Author Display</title>
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
 
 .aboutauthor_heading{
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
 .aboutauthor_container{
 			display:grid;
     height: auto;
     width: 100%;
     font-family:elegantLux;
     font-size:20px;
     padding:30px 0px 100px 80px;
 			grid-template-areas: 'author-image author-name'
                                    'author-image about-author';
     
 }
    .aboutauthor_container .author_image{
        grid-area: author-image;
        width:200px;
        height:auto;
        
    }
    .aboutauthor_container .author_name{
        grid-area: author-name;
			width:400px;
			height:auto;
    }
    .aboutauthor_container .about_author{
        grid-area: about-author;
        width:800px;
        height:auto;
    }
</style>
</head>
<body>
		<%
			String id=request.getParameter("aid");
			int imageid=Integer.parseInt(id);
			
			 Author  author=DatabaseManager.displayAuthor(imageid); 
		%>
	<div class="aboutauthor_heading">About Author</div>
		
		<div class="aboutauthor_container">
            
		<img src="images/allauthors/<%=author.getAuthorimage()%>.jpg" class="author_image" ><br>
	 	<div  class="author_name"><b style="font-size:25px">Author: </b> <br><%=author.getAuthorname()%> <br></div>
		<div class="about_author"><b style="font-size:25px">About Author:</b><br><%=author.getAboutauthor()%> </div>
		
		</div>
		
<%@ include file="footer.jsp"%>
</body>
</html>