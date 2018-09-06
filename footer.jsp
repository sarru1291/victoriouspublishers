<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Calendar" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
@font-face{
    font-family:berlin;
    src:url("font/berlin.ttf");"WebContent/subscribe.jsp"
} 
@font-face{
    font-family:berlinBold;
    src:url("font/berlinBold.ttf");
} 
@font-face{
    font-family:berlinItalic;
    src:url("font/berlinItalic.ttf");
} 
@font-face{
    font-family:elegantLux;
    src:url("font/elegantLux.otf");
} 
@font-face{
    font-family:pricedown;
    src:url("font/pricedown.ttf");
} 
@font-face{
    font-family:smoothElegant;
    src:url("font/smoothElegant.ttf");
} 
@font-face{
    font-family:quicksandbold;
    src:url("font/quicksandbold.ttf");
} 
@font-face{
    font-family:quicksandregular;
    src:url("font/quicksandregular.ttf");
} 
@font-face{
    font-family:quicksandlight;
    src:url("font/quicksandlight.ttf");
} 

body{
            margin: 0px;
            padding: 0px;
            font-family: sans-serif;
        }
*{
            box-sizing: border-box;
        }
footer{
            background-color: black;
            color: white;
            height: 40px;
          padding-top: 10px;
    padding-bottom: 10px;
    padding-left: 40px;
    font-family: elegantLux;
    font-size: 15px;
        }
    a{
        color: aqua;
        text-decoration: none;
    }
    a:hover{
        color: green;
    }
   
</style>
</head>
<body>
<footer>
       &copy; Copyright <%=Calendar.getInstance().get(Calendar.YEAR) %> Victorious Publishers. All rights reserved. 
         <a href="https://wego.here.com/directions/mix//Victorious-Publishers-India,-D-5-GF,-Ground-Floor,-Pandav-Nagar,-Near-Shanti-Nursing-Home-Opposit-Mother-Dairy,-Delhi-110092,-110092-New-Delhi:e-eyJuYW1lIjoiVmljdG9yaW91cyBQdWJsaXNoZXJzIEluZGlhIiwiYWRkcmVzcyI6IkQtNSBHXC9GLCBHcm91bmQgRmxvb3IsIFBhbmRhdiBOYWdhciwgTmVhciBTaGFudGkgTnVyc2luZyBIb21lIChPcHBvc2l0IE1vdGhlciBEYWlyeSksIERlbGhpLTExMDA5MiwgTmV3IERlbGhpIiwibGF0aXR1ZGUiOjI4LjY0MTQ0LCJsb25naXR1ZGUiOjc3LjI4NzQyLCJwcm92aWRlck5hbWUiOiJmYWNlYm9vayIsInByb3ZpZGVySWQiOjQ4NTMxODI3NDk1Nzk3M30=?map=28.64144,77.28742,15,normal&fb_locale=en_GB" target="_blank">Site Map</a>
            <a href="#">  Terms of Use</a>
            <a href="#">  Privacy Policy</a>
        </footer>
</body>
</html>