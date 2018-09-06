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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Register | Victorious Publishers (INDIA)</title>
    <style>
 body{
            margin: 0px;
            padding: 0px;
            font-family: sans-serif;
        }
*{
            box-sizing: border-box;
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
        .registration_form{
            display: grid;
            height: 600px;
            width: 300px;
            text-align:center;
            padding-top:20px;
            margin-left:500px;
            margin-right:350px;      
            grid-template-areas: 'first-name' 'last-name' 'username' 'email' 'phone-number' 'password' 'confirm-password';    
            
        }
        .first_name{
            grid-area: first-name;
        }
        .last_name{
            grid-area: last-name;
        }
         .username{
            grid-area: username;
        }
         .email{
            grid-area: email;
        }
         .phone_number{
            grid-area: phone-number;
        }
         .password{
            grid-area: password;
        }
         .confirm_password{
            grid-area: confirm-password;
        }
       
        .registration_form input{
        	
        	padding:10px;
        	margin-bottom:20px;
        	width:300px;
        	border:1px solid #5294e2;
        	border-radius:5px;        	
        }
        
        .registration_form input:focus{
        border:1px solid #5294e2;
        box-shadow:0px 0px 5px  #5294e2;
        }
          .registerformregisterbutton{
   background-color:#5294e2; 
   color:white;
    
}
        .registerformregisterbutton:hover{
   background-color:#353945; 
   color:white;
   border:1px solid #353945;   
}
.registerformregisterbutton:active{
 background-color: #5294e2;
    color: white;
}
.loginbox a{
		text-decoration:underline;
		color:#5294e2;
}
.loginbox a:hover{
		text-decoration:underline;
		color:#252945;
}
.loginbox a:active{
		text-decoration:underline;
		color:#5294e2;
}
    </style>
    </head>
    <body>

        <div class="registration_form">
        <h3>Registration Form</h3>
        <form action="register.jsp" method="post">
            <input type="text"  required class="first_name" placeholder="First Name" name="firstname" autofocus><br>
            <input type="text" required class="last_name" placeholder="Last Name" name="lastname"><br>
            <input type="text" required class="username" placeholder="Username" name="username"><br>
            <input type="email" required class="email" placeholder="Email" name="email" ><br>
            <input type="tel" required class="phone_number" maxlength="10" name="phonenumber" placeholder="Phone Number"><br>
            <input type="password"  required class="password" placeholder="Password" name="password"><br>
            <input type="password"  required class="confirm_password" placeholder="Confirm Password" name="confirmpassword"><br>
          
          <input type="submit" class="registerformregisterbutton" value="Register">
            </form>
        
        </div>
 <%@ include file="footer.jsp"%>    
   
    </body>
</html>