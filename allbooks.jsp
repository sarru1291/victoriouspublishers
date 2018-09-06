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

<%@ page import="com.DatabaseManager,java.util.*,bean.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books</title>
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
 
 .allbook_heading{
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
 .allbook_container{
 	display:grid;
 	grid-template-columns:repeat(4,1fr);
 	grid-row-gap: 30px;
 	
 	margin:30px 0px 50px 50px;
 }
    .allbook_style{
        width:auto; 
        height:280px;      
    }  
    .allbook_style:hover{
    box-shadow: 0px 0px 20px dimgray;
    height: 300px;
    opacity:0.9;
    width: auto;
}
</style>
</head>
<body>
<div class="allbook_heading">All Books</div>
<div class="allbook_container">
		<%
				ArrayList<Book> allbooks=DatabaseManager.loadAllBooks();
				for(int i=0;i<allbooks.size();i++){
					Book book=allbooks.get(i);									
		%> 
	<a href="bookdisplay.jsp?bid=<%=book.getBookimage()%>">	<img src="images/allbooks/<%=book.getBookimage()%>.jpg" class="allbook_style"></a>
	<%} %>	
</div>

<%@ include file="footer.jsp"%>
</body>
 
</html>