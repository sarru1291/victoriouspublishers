<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DatabaseManager,java.util.*,bean.*" %>
    <%
		String username=(String) session.getAttribute("username");
		String password=(String) session.getAttribute("password");
		if(username==null || password==null){
			%>
		<%@ include file="header.jsp"%>
		<%}
		else{%>
		<%@ include file="loggedinheader.jsp"%>
		<%}
%>

<%@ include file="navigation.html"%>
<%@ include file="certificate.html"%>
<%@ include file="social.html"%>
<%@ include file="subscribebox.html"%>

<%
				ArrayList<Book> allbooks=DatabaseManager.loadAllBooks();
				
					Book book1=allbooks.get(2);
					Book book2=allbooks.get(1);	
					Book book3=allbooks.get(4);	
					Book book4=allbooks.get(6);	
					Book book5=allbooks.get(3);
					Book book6=allbooks.get(5);	
					Book book7=allbooks.get(7);	
					Book book8=allbooks.get(8);	
					Book book9=allbooks.get(4);	
				ArrayList<Author> allAuthors=DatabaseManager.loadAllAuthors();
						
							Author author1=allAuthors.get(1);	
							Author author2=allAuthors.get(2);
							Author author3=allAuthors.get(3);
				
		%> 
<!DOCTYPE html>
<html>
<head>
     <title> Victorious Publishers (INDIA)</title>
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="index.css" type="text/css" rel="stylesheet">
    
    <script src="jquery-3.3.1.min.js"></script>
    </head>
    <body>
    
    <div class="container">
       
        <div  class="publish_left_section">
                <h1 > Publish With Us</h1>
     <span style="font-family:elegantLux;font-size:20px;">    We provide cost-effective and highest quality standard publications.<br>
        We promise you to deliver the print proceedings to your desired venue on scheduled time.</span><br><br>
      <span style="font-size:20px;font-family:berlinBold;letter-spacing:1px;">     <b>     You are two steps behind to get published your own book.</b></span><br>
                
            <h3>Click here to publish your book</h3>
            
     <a href="#"> <button class="button" id="publish_button">Publish</button></a>      
            </div>
        <div class="publish_right_section"> <b>We would like to introduce Victorious Publishers (India) to your esteemed organisation for 
        publishing activities like: editing, proofreading, cover designing, printing, etc. Victorious Publishers (India) publish 
        conference/symposia/workshop proceedings in the book form. With the advancement in technology, the publications are increasingly 
        needed in convenient electronic formats like CD-ROMs or DVD-ROMs web based publications. <br>
         
 We offer best-in-class publishing services. Victorious Publishers (India) meet the new challenges and help the 
</b>
      <b>  <a href="aboutuspage.jsp">see more...</a> </b> 
        </div>
        
        <div class="latest_releases_label label_style">Latest Releases</div>
        
        <div class="latest_releases_book">
        <div class="book_moving_button backward_button_latest" >
     <a href="#"> <img alt="backward" src="images/others/backward.png" ></a>
        </div>
        <a href="bookdisplay.jsp?bid=<%=book1.getBookimage()%>" class="latest_books1">	<img src="images/allbooks/<%=book1.getBookimage()%>.jpg" class="latest_book_size"></a>
        <a href="bookdisplay.jsp?bid=<%=book2.getBookimage()%>" class="latest_books2">	<img src="images/allbooks/<%=book2.getBookimage()%>.jpg" class="latest_book_size"></a>
      <a href="bookdisplay.jsp?bid=<%=book3.getBookimage()%>" class="latest_books3">	<img src="images/allbooks/<%=book3.getBookimage()%>.jpg" class="latest_book_size"></a>
      <a href="bookdisplay.jsp?bid=<%=book4.getBookimage()%>" class="latest_books4">	<img src="images/allbooks/<%=book4.getBookimage()%>.jpg" class="latest_book_size"></a>
        
            
          <div class="book_moving_button forward_button_latest">
     <a href="#"><img alt="forward" src="images/others/forward.png" id="latestbookforwardbutton"></a>
          </div>  
        </div>
       
        <div class="authors_label  label_style">Authors</div>
        <div class="authors">
        
        <div  class="author_size" class="author1">
          <a href="authordisplay.jsp?aid=<%=author1.getAuthorimage()%>">  <img src="images/allauthors/<%=author1.getAuthorimage()%>.jpg"  class="author_image"></a><br>
            <a href="authordisplay.jsp?aid=<%=author1.getAuthorimage()%>" class="author_name"><%=author1.getAuthorname() %></a>
            </div>
        <div class="author_size" class="author2">
         <a href="authordisplay.jsp?aid=<%=author2.getAuthorimage()%>">  <img src="images/allauthors/<%=author2.getAuthorimage()%>.jpg"  class="author_image"></a><br>
            <a href="authordisplay.jsp?aid=<%=author2.getAuthorimage()%>" class="author_name"><%=author2.getAuthorname() %></a>
             </div>
        <div class="author_size" class="author3">
           <a href="authordisplay.jsp?aid=<%=author3.getAuthorimage()%>">  <img src="images/allauthors/<%=author3.getAuthorimage()%>.jpg"  class="author_image"></a><br>
            <a href="authordisplay.jsp?aid=<%=author3.getAuthorimage()%>" class="author_name"><%=author3.getAuthorname() %></a>
            </div>
         <div class="more_style author_more"><b><a href="allauthorspage.jsp">more...</a></b></div>   
        </div>
        
        <div class="all_books_label label_style">Books</div>
         <div class="all_books">
        
            <a href="bookdisplay.jsp?bid=<%=book5.getBookimage()%>" class="book1">
            <img src="images/allbooks/<%=book5.getBookimage()%>.jpg" class="latest_book_size"></a>
            <a href="bookdisplay.jsp?bid=<%=book6.getBookimage()%>" class="book2">
            <img src="images/allbooks/<%=book6.getBookimage()%>.jpg" class="latest_book_size"></a>
            <a href="bookdisplay.jsp?bid=<%=book7.getBookimage()%>" class="book3">
            <img src="images/allbooks/<%=book7.getBookimage()%>.jpg" class="latest_book_size"></a>
            <a href="bookdisplay.jsp?bid=<%=book8.getBookimage()%>" class="book4">
            <img src="images/allbooks/<%=book8.getBookimage()%>.jpg" class="latest_book_size"></a>
            <a href="bookdisplay.jsp?bid=<%=book4.getBookimage()%>" class="book5">
            <img src="images/allbooks/<%=book4.getBookimage()%>.jpg" class="latest_book_size"></a>
        
        <div class="more_style allbook_more"><b><a href="allbooks.jsp">more...</a></b></div> 
        </div>  
        
        <div class="category_label label_style">Category</div>
        <div class="category">
        
        <a href="#" class="category_text politics" >Politics</a>
        <a href="#" class="category_text proceeding" >Proceedings</a>
        <a href="#" class="category_text novel">Novels</a>
        <a href="#"  class="category_text journal">Journals</a>

        </div>
        
        <div class="coming_soon_label label_style">Coming soon</div>
        <div class="coming_soon_books">
        
         <div class="book_moving_button backward_button_comingsoon" >
     <a href="#"><img alt="backward" src="images/others/backward.png"></a>
        </div>
        <a href="#" class="comingsoon_books1"> <img src="images/comingsoon/01.jpg" class="latest_book_size"></a>
          <a href="#" class="comingsoon_books2">  <img src="images/comingsoon/02.jpg" class="latest_book_size"></a>
          <a href="#" class="comingsoon_books3">  <img src="images/comingsoon/03.jpg" class="latest_book_size"></a>
         <a href="#" class="comingsoon_books4">   <img src="images/comingsoon/04.jpg" class="latest_book_size"></a>
         <a href="#" class="comingsoon_books5">   <img src="images/comingsoon/05.jpg" class="latest_book_size"></a>
        
         
          <div class="book_moving_button forward_button_comingsoon">
  <a href="#"><img alt="forward" src="images/others/forward.png" ></a>   
          </div>    
        
        </div>

        </div>
   
        <script>
        $(document).ready(function(){
            
         
        });
        
        </script>
        <%@ include file="footer.jsp"%>
     
    </body>
</html>