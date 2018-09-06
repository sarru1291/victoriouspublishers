<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin | Add author</title>
</head>
<body>
		<a href="admin_main.jsp">	<button type="button" style="margin-left:1000px">Main Menu</button></a><br>

		Add new author to database: <br>
			<div class="addauthor">
		
		<form method="post" action="addnewauthor.jsp" id="addauthorform">
		
		<input type="text" placeholder="Enter Author Name" name="authorname"><br>
			<input type="file"  name="authorimage"><br>
		<input type="submit" value="ADD"><br>
		
		</form>
		
		<textarea name="aboutauthor" form="addauthorform" placeholder="Enter about author" ></textarea>
		</div>
</body>
</html>