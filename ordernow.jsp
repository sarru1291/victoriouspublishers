<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="loggedinheader.jsp"%>

<%@ include file="navigation.html"%>
<%@ include file="certificate.html"%>
<%@ include file="social.html"%>
<%@ include file="subscribebox.html"%>
    <%@ page import="com.DatabaseManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Status</title>
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
 background-color: #5294e2;
    color: white;
}
</style>
</head>
<body>
			<%
			
			String bid=request.getParameter("bid");
			int bookid=Integer.parseInt(bid);
			String addressline1=request.getParameter("addressline1");
			String addressline2=request.getParameter("addressline2");
			String address=addressline1+" "+addressline2;
			
			String username=(String) session.getAttribute("username");
			String password=(String) session.getAttribute("password");
					int cid=DatabaseManager.getCustomerId(username,password);
					 int orderStatus=DatabaseManager.addCustomerOrder(cid,bookid,address);
					 if(orderStatus==1){  out.print("<html><head><style>#message{border: 2px solid #355945;background-color: #c7c7c7;margin: 100px  200px  400px 350px;width:700px; padding-left:30px;");
					    out.print("padding-right:30px;padding-bottom:30px;border-radius:10px;} #message h3{color:#353945;}</style></head><body>");
					   out.print("<div id=\"message\"> <h3>Victorious Publishers (INDIA)</h3>   <br> Your ordered successfully</div></body></html>");
					  }
					  else{
						  out.print("<html><head><style>#message{border: 2px solid #355945;background-color: #c7c7c7;margin: 100px  200px  400px 350px;width:700px; padding-left:30px;");
						    out.print("padding-right:30px;padding-bottom:30px;border-radius:10px;} #message h3{color:#353945;}</style></head><body>");
						   out.print("<div id=\"message\"> <h3>Victorious Publishers (INDIA)</h3>   <br> Sorry! Failed to process</div></body></html>");
						  
					  }
			%>
			 <%@ include file="footer.jsp"%>
</body>
</html>