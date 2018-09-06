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
<%@ page import="com.DatabaseManager,java.util.*,bean.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script src="jquery-3.3.1.min.js"></script>
<title>Book Display</title>
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
 
 .aboutbook_heading{
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
 .aboutbook_container{
 			display:grid;
     height: auto;
     width: 100%;
     font-family:elegantLux;
     font-size:20px;
     padding:30px 0px 100px 80px;
 			grid-template-areas: 'book-image book-detail'
 									'about-book about-book';
     
 }
    .aboutbook_container .book_image{
    grid-area:book-image;
    width:230px;
    height:auto;
    }
    .aboutbook_container .book_detail{
        grid-area: book-detail;
			width:600px;
			height:auto;
						
    }
   .aboutbook_container .about_book{
   	grid-area:about-book;
   	width:100%;
   	height:auto;
   }
   .aboutbook_container .book_detail button{
   		background-color:#b96320;
   		color:white;
   		height:38px;
   		width:150px;
   		border: none;
       font-family:berlinBold;
       letter-spacing:1px;
       font-size:18px;
   		
   }
   .aboutbook_container .book_detail button:hover{
   		background-color:#dda266;
   		
   }
   .aboutbook_container .book_detail button:active{
   		background-color:#b96320;
   		
   }
   
   
</style>

</head>
<body>
		<%
			String id=request.getParameter("bid");
			int imageid=Integer.parseInt(id);
			
			 Book  book=DatabaseManager.displayBook(imageid); 
		%>
		
		<div class="aboutbook_heading">About Book</div>
		
		<div class="aboutbook_container">
		<img src="images/allbooks/<%=book.getBookimage()%>.jpg" class="book_image"> 
		<div class="book_detail">
				<b>Title: </b><%=book.getTitle()%><br>
				<b>Author: </b><%=book.getAuthor()%><br>
				<b>ISBN: </b><%=book.getIsbn()%><br>
				<b>Language: </b><%=book.getLanguage() %><br>
				<b>Format: </b><%=book.getFormat() %><br>
				<b>Pages: </b><%=book.getPage() %><br>
				<b>Category: </b><%=book.getCategory() %><br><br>
				<b>Price: </b>Rs. <%=book.getPrice() %><br><br><br><br>
				<a href="order.jsp?bid=<%=book.getBookimage() %>"><button>Order Now</button></a> 
		</div>
		<div class="about_book">
	<br><br>	<b>About Book:</b><br><%=book.getAboutbook() %>
		</div>
		
		</div>
			
<%@ include file="footer.jsp"%>

	

</body>
</html>