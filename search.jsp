<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="com.DatabaseManager" %>
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

<%@  page import="bean.*,java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Result</title>
<style >
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
		background-color:#5294e2;
		color:white;
}
.searchresult_container{
	height:auto;
	width:100%;
	padding:50px 0px 40px 0px;
}
.searchresult_container .searchresult{
	background-color:grey;
	padding:5px 10px 5px 50px;
}
</style>
</head>
<body>
<div class="searchresult_container">
		<%
			String usersearchinput=request.getParameter("usersearchinput");		
			 boolean result = DatabaseManager.searchBook(usersearchinput);
			if(result){
				ArrayList<Book> allSearchedBook=DatabaseManager.displayResult(usersearchinput);
				for(int i=0;i<allSearchedBook.size();i++){
				Book book=allSearchedBook.get(i);
					%>
		<div class="searchresult">
				<%=book.getAuthor() %>  &nbsp;&nbsp;&nbsp;&nbsp;<a href="bookdisplay.jsp?bid=<%=book.getBookid()%>" > <%=book.getTitle() %></a>
		
		</div>
		<%} %>
		<%}else{
						%>
					<div style="text-align:center; font-size:30px"> No result found</div>	
						<%
			}%>
		
		</div>	 
			 
			  <%@ include file="footer.jsp"%>
</body>
</html>