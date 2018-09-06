<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="admin.*,bean.*,java.util.ArrayList" %>
     <%
		String username=(String) session.getAttribute("username");
		String password=(String) session.getAttribute("password");
	if(username==null || password==null){
		response.sendRedirect("admin_login.jsp");
	}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
				<a href="admin_main.jsp">		<button style="margin-left:800px" >Main menu</button><br></a>
		<div class="allcustomerorders_container">
		<b>Book Ordered By Customers</b><br><br><br>
				<b>id</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<b>BookTitle</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	
				<b>Ordered by</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<b>Delivery Address</b>
					<%
					ArrayList<CustomerOrders>	allcustomerorders=AdminDatabaseManager.allCustomerOrders();						
						for(int i=0;i<allcustomerorders.size();i++){
						CustomerOrders customerorder=	allcustomerorders.get(i);
							%>
				<div class="customer_order">
			<%=i%>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<%  		int bookid=customerorder.getBid();
					String bookname=AdminDatabaseManager.getBookName(bookid);
			out.print(bookname);
			
			%>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
			<%		int customerid=customerorder.getCid(); 
			String customername=AdminDatabaseManager.getCustomerName(customerid);
			out.print(customername);
			
			%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<%=customerorder.getAddress() %>
				</div>
				<%
						}
					%>
		
		
		</div>
</body>
</html>