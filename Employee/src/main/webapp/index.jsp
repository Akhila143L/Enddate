<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
body{
	background:url("https://cdn.wallpapersafari.com/93/19/XWDt4V.jpg") no-repeat;
	background-size:auto;
	background-position:-600px 0px;
	min-height:100%;
	font-size:18px;
	display:flex;
	flex-flow:column;
	align-items:center;
	flex:blur(20px);
	
	}
body > div{
     display: flex;
    justify-content: center;
    flex-flow: column;
    background: linear-gradient(to bottom, #DDA0DD 18%, #FFFAFA 77%);
    min-height: 100%;
    border-radius: 25px;
    box-shadow: 0px 0px 54px;
    padding: 30px;
    }
 button {
 background-color:rgba(255, 0, 0, 0.6);
 font-size: 20px;
 padding: 12px 28px;
 border-radius: 20px;
 border: 6px solid #e7e7e7; 
 box-shadow:0 20px 30px rgba(0, 255 ,0 , 0.5);
 cursor:pointer;
 }
</style>
</head>
<body>
		<h1>Employee Management</h1><br>
		
		<br>
		<div>
		<a  href="Admlogin.jsp"><button class="btn btn-secondary">Admin Login</button></a>&nbsp;&nbsp;&nbsp;
    <a href="login.jsp"><button class="btn btn-secondary">Employee Login</button></a>
		</div>
	 
</body>
</html>