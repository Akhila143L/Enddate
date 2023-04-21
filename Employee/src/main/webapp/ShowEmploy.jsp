<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Table</title>
</head>
<style>
body {
  background-color:#fffff;
	background-size:cover;
  background-repeat: no-repeat;
  }
  table{
  width: 100%;
    background-color: #D8F0DA;
    border: 1px solid;
    min-width: 100%;
    position: relative;
    opacity: 0.97;
    background: transparent;
  
}
th, td {
    padding: 10px;
    text-align: left;
} 
tr:hover {
background-color: #f5f5f5
}
th
{
background-color: plum;
}
</style>
<body>
<jsp:useBean id="beanDAO" class="com.infinite.employ.EmployDAO"/>

<table border="3" align="center">
  <tr>
    <th>Employ Id</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Gender</th>
    <th>DoB</th>
    <th>Age</th>
    <th>Mobile No</th>
    <th>Local Address</th>
    <th>Permanent Address</th>
    <th>Department</th>
    <th>Job Title</th>
    <th>Salary</th>
    <th>Employment Status</th>
    <th>Qualifications</th>
    <th>Skills</th>
    <th>Certifications</th>
    <th>Begin Date</th>
    <th>End Date</th>
    <th>Update</th>
  </tr>
  
  <c:forEach var="employ" items="${beanDAO.showEmploy()}">
    <tr>
      <td>${employ.employId}</td>
      <td>${employ.firstName}</td>
      <td>${employ.lastName}</td>
      <td>${employ.gender}</td>
      <td>${employ.birthday}</td>
      <td>${employ.age}</td>
      <td>${employ.mobNo}</td>
      <td>${employ.localAddress}</td>
      <td>${employ.peramanentAddress}</td>
      <td>${employ.department}</td>
      <td>${employ.jobtitle}</td>
      <td>${employ.salary}</td>
      <td>${employ.estatus}</td>
      <td>${employ.qualifications}</td>
      <td>${employ.skills}</td>
      <td>${employ.certifications}</td>
      <td>${employ.beginDate}</td>
      <td>${employ.endDate}</td>
      <td>
        <a href="Update.jsp?employId=${employ.getEmployId()}">
          <button class="btn btn-outline-secondary">UPDATE</button>
        </a>
      </td>
    </tr>
  </c:forEach>
  
</table>
</body>
</html>