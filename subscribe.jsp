<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.DatabaseManager" %>
      <%@ include file="header.jsp"%>
<%@ include file="navigation.html"%>
<%@ include file="certificate.html"%>
<%@ include file="social.html"%>
<%@ include file="subscribebox.html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

</style>

    </head>
<body>



    <% 
       String email=request.getParameter("email");
    
 int i=DatabaseManager.storeEmailForNewsletter(email);
  if(i==1){  out.print("<html><head><style>#message{border: 2px solid #355945;background-color: #c7c7c7;margin: 100px  200px  400px 350px;width:700px; padding-left:30px;");
    out.print("padding-right:30px;padding-bottom:30px;border-radius:10px;} #message h3{color:#353945;}</style></head><body>");
   out.print("<div id=\"message\"> <h3>Victorious Publishers (INDIA)</h3>   <br> Thank You! You have successfully subscribed to our newsletter.</div></body></html>");
  }
  else{
	  out.print("<html><head><style>#message{border: 2px solid #355945;background-color: #c7c7c7;margin: 100px  200px  400px 350px;width:700px; padding-left:30px;");
	    out.print("padding-right:30px;padding-bottom:30px;border-radius:10px;} #message h3{color:#353945;}</style></head><body>");
	   out.print("<div id=\"message\"> <h3>Victorious Publishers (INDIA)</h3>   <br> Sorry! You Failed to Subscribe.</div></body></html>");
	  
  }
       %>
    			      
        <%@ include file="footer.jsp"%>
       
 </body>   
</html>