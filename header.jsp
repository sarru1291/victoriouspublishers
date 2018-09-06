<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import="com.*,bean.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

body{
            margin: 0px;
            padding: 0px;
            font-family: sans-serif;
        }
*{
            box-sizing: border-box;
        }  
  header{
    grid-area: header;
    font-family: sackersGotham;
    
    height: 80px;
    font-size: 40px;
    padding-top: 10px;
    padding-bottom:10px;
    background-color:#eef3f7;
    position: sticky;
    top: 0px;
    z-index: 2;
    display: grid;
    grid-template-areas: 'logo company-name company-name company-name header-button';
    
}
.logo{
    grid-area: logo;
    padding-top: 7px;
    padding-left: 30px;
}
#logo{
height: 50px;
    width: 50px;
    float: right;
    }
.company_name{
    grid-area:company-name;
    margin-left: 0px;
    height: 80px;
    padding-top: 10px;
    padding-left: 10px;
    color:#353945;
    text-decoration: none; 
}
    #companyname:hover{
        color: #5294e2;
    }
.header_button{
    grid-area:header-button;   
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
		background-color:#5294e2;
		color:white;
}
.header_button img{
	height:40px;
	width:40px;
	position:absolute;
	margin-left:20px;
	margin-top:10px;
}
</style>
</head>
<body>

 <header>
          <div class="logo">
          <img src="images/logo/logo.jpg" alt="logo" id="logo">
              </div>
         <a href="index.jsp" id="companyname" class="company_name"> Victorious Publishers (INDIA)</a>
          <div class="header_button">
       
      <a href="loginpage.jsp"> <button type="button" class="button">Log in</button></a>
     <a href="registerpage.jsp"><button type="button" class="button">Register</button></a> 
 
              </div>
        </header>
  
</body>
</html>