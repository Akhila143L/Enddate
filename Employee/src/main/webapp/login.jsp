<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">

</head>
<body>
<br/>
<div>
<center>
<img src="https://www.oasdom.com/wp-content/uploads/2018/01/oasdom.com-6-free-logo-design-online.jpg" width="100" height="100" >
</center><br/>
<div style="display:flex; justify-content:center;flex-flow:column">
<h2> LOGIN PAGE</h2><br/>
	<div class="align-items-center" style="width: 300px;display:flex;align-items:center;justify-content:center">
    <center>
    <form method="post" style="width: 100%;">
    <br/><div class="mb-3 formI">
        <label style="width:30%" for="email" >Email:</label>
       <input style="width:70%" class="form-control" type="email" id="email" name="email"><br/><br/>
        </div>
        <div class="mb-3 formI">
        <label style="width:30%" for="password">Password:</label>
        <input style="width:70%" class="form-control" type="password" id="password" name="password"><br/><br/>
        </div>
        
        <div class="mb-3 formI" style="text-align: center;display:flex;justify-content: space-evenly;">
             <input  class="btn btn-primary" type="submit" value="Login">
             <br/><br/>
             </div>
             
    <div class="mb-3 formI" style="text-align:center; display:flex;justify-content: space-evenly;">
    	<p>Don't have an account? <a href="Enroll.jsp">Register</a>.</p>
	</div>
	</form>
	</center>
	</div>
	</div>
	</div>
<br/>
	<c:if test="${param.email!=null && param.password!=null}">
<jsp:useBean id="employ" class="com.infinite.employ.Employ" />
<jsp:setProperty property="*" name="employ" />
<jsp:useBean id="beanDAO" class="com.infinite.employ.EmployDAO" />
<c:set var="email" value="${param.email }" />
<c:set var="password" value="${param.password }" />
<c:set var="count" value="${beanDAO.loginCheck(email,password)}" />
<c:if test="${count==1}">
		<c:set var="email" value="${email}" scope="session" />
			<jsp:forward page="menu.jsp"/>
		</c:if>
		</c:if>
		</body>
		</html>