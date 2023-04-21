<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enrollment Page</title>
<link rel="stylesheet" href="text.css">
</head>
<body><center>
<img src="https://www.oasdom.com/wp-content/uploads/2018/01/oasdom.com-6-free-logo-design-online.jpg" >
</center>
	<h1>
		<i>Indian Company</i>
	</h1>
	<center>
	<form method="post" style="width: 100%;" >
		<h2 >Employee Registration</h2>
		<br /> 
	  <div class="mb-3 form1">
		<label style="width:27%" for="firstName"><b>First Name :</b></label>
		<input  class="form-control" type="text" name="firstName" minlength="3" maxlength="20" ><br/><br/>
		 </div>
		<div class="mb-3 form1">
		<label style="width:27%" for="lastName"><b>Last Name :</b></label>
		<input  class="form-control" type="text" name="lastName" minlength="3" maxlength="20" ><br/><br/>
		 </div>
		 
		<div class="mb-3 form1">
		<label style="width:27%" for="gender"><b> Gender :</b></label>
		<input type="radio" name="gender" value="MALE">Male
		<input type="radio" name="gender" value="FEMALE">Female<br /><br/>
		</div>
		
		<div class="mb-3 form1">
		<label style="width:27%" for="birthday"><b>Date of Birth:</b></label>
		 <input type="date" id="dob" name="birthday" onchange="calculateAge()"> 
		 </div><br/>
		 <div class="mb-3 form1">
		<label style="width:27%" for="age"><b>Age:</b></label> 
		 <input  class="form-control" type="text" id="age" name="age" readonly><br /><br />
		 </div>
		 
		 <div class="mb-3 form1">
		  <label style="width:27%" for="phone"> <b>Contact Number:</b></label> 
		  <select id="countryCode" name="countryCode">
          <option value="+1">+1 (United States)</option>
          <option value="+44">+44 (United Kingdom)</option>
          <option value="+91">+91 (India)</option>
          <option value="+52">+52 (Mexico)</option>
          <option value="+55">+55 (Brazil)</option>
          <option value="+54">+54 (Argentina)</option>
          <option value="+49">+49 (Germany)</option>
          <option value="+33">+33 (France)</option>
          <option value="+39">+39 (Italy)</option>
          <option value="+34">+34 (Spain)</option>
          <option value="+86">+86 (China)</option>
          <option value="+81">+81 (Japan)</option>
          <option value="+82">+82 (South Korea)</option>
          <option value="+7">+7 (Russia)</option>
          <option value="+61">+61 (Australia)</option>
          <option value="+64">+64 (New Zealand)</option> 
          </select>
		<input  class="form-control" type="tel" name="mobNo" min="10" pattern="[0-9]{10}"><br/><br/>
		</div>
		
		<div class="mb-3 form1">
		<label style="width:27%" for="localAddress"><b>Local Address:</b></label>
		<textarea id="localAddress" name="localAddress" rows="4" cols="50" ></textarea><br/><br/>
		
		<label style="width:27%" for="sameAddress"></label>
		 <input type="checkbox"id="sameAddress" name="sameAddress" value="yes"onclick="copyLocalAddress();">
		 <b>Same as local address</b><br/>

		<label style="width:27%" for="peramanentAddress"><b>Permanent Address:</b></label>
		<textarea id="peramanentAddress" name="peramanentAddress" rows="4" cols="50" ></textarea><br/><br/>
	    </div>
	
		<div class="mb-3 form1">
		<label style="width:27%" for="department"><b>Department:</b></label> 
		<select id="department" name="department" onchange="updateDepartments()">
				<option value=""></option>
				<option value="HumanResources">Human Resources</option>
				<option value="AccountingandFinance">Accounting and Finance</option>
				<option value="IT">IT</option>
				<option value="Marketing">Marketing</option>
				<option value="ResearchandDevelopment">Research and Development</option>
				<option value="Production">Production</option>
				</select><br/><br/>
		</div>
				
		<div class="mb-3 form1">
		<label style="width:27%" for="jobtitle"><b>Job Title:</b></label>
		<select id="departments" name="jobtitle" >
		    <option value=""></option>
		    <option value="Human Resources Assistant" class="HumanResources">Human Resources Assistant</option>
			<option value="Recruitment Manager" class="HumanResources">Recruitment Manager</option>
			<option value="HR Manager" class="HumanResources">HR Manager</option>
			<option value="Training and Development Manager" class="HumanResources">Training and Development Manager</option>
			<option value="HR Intern" class="HumanResources">HR Intern</option>
			
		    <option value="Accountant" class="Accounting and Finance">Accountant</option>
			<option value="Chief Financial Officer" class="AccountingandFinance">Chief Financial Officer</option>
			<option value="Accounting Supervisor" class="AccountingandFinance">Accounting Supervisor</option>
			<option value="Accounting Manager" class="AccountingandFinance">Accounting Manager</option>
			
            <option value="Web Designer" class="IT">Web Designer</option>
			<option value="Web Developer" class="IT">Web Developer</option>
			<option value="Software Engineer" class="IT">Software Engineer</option>
			<option value="Data Entry" class="IT">Data Entry</option>
			<option value="Computer Scientist" class="IT">Computer Scientist</option>
			<option value="Computer Programmer" class="IT">Computer Programmer</option>
			<option value="Technical Specialist" class="IT">Technical Specialist</option>
			
			<option value="Marketing executive" class="Marketing">Marketing executive</option>
			<option value="Marketing coordinator" class="Marketing">Marketing coordinator</option>
			<option value="Marketing assistant" class="Marketing">Marketing assistant</option>
			<option value="E-commerce Marketing Manager" class="Marketing">E-commerce Marketing Manager</option>
			<option value="Senior Manager" class="Marketing">Senior Manager</option>
			
			<option value="Engineer" class="ResearchandDevelopment">Engineer</option>
			<option value="Manager" class="ResearchandDevelopment">Manager</option>
			<option value="Data Scientist" class="ResearchandDevelopment">Data Scientist</option>
			
			<option value="Production Supervisor" class="Production">Production Supervisor</option>
			<option value="Production Manager" class="Production">Production Manager</option>
			<option value="Production Executive" class="Production">Production Executive</option>
			
		</select>
		</div><br/>
		
		<div class="mb-3 form1">
		<label style="width:27%" for="salary"><b>Salary:</b></label> 
		<select id="salary" name="salary">
				<option value=""></option>
				<option value="<2.5LPA">2.5LPA</option>
				<option value="2.5-3LPA">2.5-3LPA</option>
				<option value="3-3.5LPA">3-3.5LPA</option>
				<option value="3.5-4LPA">3.5-4LPA</option>
				<option value="4-4.5LPA">4-4.5LPA</option>
				<option value="4.5-5LPA">4.5-5LPA</option>
				<option value="5-5.5LPA">5-5.5LPA</option>
				<option value="5.5-6LPA">5.5-6LPA</option>
				<option value="6-6.5LPA">6-6.5LPA</option>
				<option value="6.5-7LPA">6.5-7LPA</option>
				<option value="7-7.5LPA">7-7.5LPA</option>
				<option value="7.5-8LPA">7.5-8LPA</option>
				<option value="8-8.5LPA">8-8.5LPA</option>
				<option value="8.5-9LPA">8.5-9LPA</option>
				<option value="9-9.5LPA">9-9.5LPA</option>
				<option value="9.5-10LPA">9.5-10LPA</option>
				<option value=">10LPA">>10LPA</option>		
				</select><br/><br/>
				</div>
				
		<div class="mb-3 form1">
		<label style="width:27%" for="beginDate"><b>Begin Date:</b></label>
		<input class="form-control" type="date" id="beginDate" name="beginDate" onchange="updateUI()" ><br/><br/>
		</div>
		
		<div class="mb-3 form1">
		<label style="width:27%" for="estatus"><b>Employee Status</b></label>
		<input type="radio" id="PARTTIME" name="estatus" value="PARTTIME" onchange="updateUI()">PartTime
		<input type="radio" id="FULLTIME" name="estatus" value="FULLTIME" onchange="updateUI()">FullTime<br/><br/>
		</div>
		
		<div class="mb-3 form1">
		<label style="width:27%" for="endDate"><b>End Date:</b></label>
		<input class="form-control" type="date" id="endDate" name="endDate"><br/><br/>
		</div>
		
		<div class="mb-3 form1">
		<label style="width:27%" for="qualifications"><b>Qualifications:</b></label>
		<input  class="form-control" type="text" name="qualifications"><br/><br/> 
		</div>
		
		<div class="mb-3 form1">
		<label style="width:27%" for="skills"><b>Skills:</b></label>
		<input  class="form-control" type="text" name="skills" ><br/><br/>
		</div>
		
		<div class="mb-3 form1">
		<label style="width:27%" for="certifications"><b>Certifications:</b></label>
		<input  class="form-control" type="text" name="certifications" ><br/><br/> 
		</div>
		
		<div class="mb-3 form1">
		<label style="width:27%" for="email"><b>Email:</b></label>
		<input  class="form-control" type="email" id="email" name="email" ><br/><br/> 
		</div>
		
		<div class="mb-3 form1">
		<label style="width:27%" for="password"><b>Password:</b></label>
		<input  class="form-control" type="password" id="password" name="password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" /><br/><br/> 
		</div>
		
		  <div class="mb-3 formI" style="text-align:center; display:flex; justify-content:space-evenly;">
			<center>
				<input class="btn btn-primary" type="submit" value="SUBMIT"/><br/><br/>
				<a href="login.jsp">Back</a>
			</center>
			</div>			
	</form>
	</center>
	    
   <script>
function copyLocalAddress() {
  var sameAddressCheckbox = document.getElementById('sameAddress');
  var permanentAddressField = document.getElementById('peramanentAddress');
  var localAddressField = document.getElementById('localAddress');
  if (sameAddressCheckbox.checked) {
    permanentAddressField.value = localAddressField.value;
    permanentAddressField.readOnly = true;
  } else {
    permanentAddressField.value = '';
    permanentAddressField.readOnly = false;
  }
}   
function updateDepartments() {
	  var firstSelectValue = document.getElementById("department").value;
	  var secondSelectOptions = document.getElementById("departments").options;
	  for (var i = 0; i < secondSelectOptions.length; i++) {
	    if (secondSelectOptions[i].classList.contains(firstSelectValue)) {
	      secondSelectOptions[i].style.display = "block";
	    } else {
	      secondSelectOptions[i].style.display = "none";
	    }
	  }
	}
function calculateAge() {
	  var dobInput = document.getElementById("dob");
	  var dobValue = dobInput.value;
	  var dobDate = new Date(dobValue);
	  var todayDate = new Date();
	  var age = todayDate.getFullYear() - dobDate.getFullYear();
	  var monthDiff = todayDate.getMonth() - dobDate.getMonth();
	  if (monthDiff < 0 || (monthDiff === 0 && todayDate.getDate() < dobDate.getDate())) {
	    age--;
	  }
	  document.getElementById("age").value = age;
	}
function updateUI() {
	var PARTTIME = document.getElementById('PARTTIME');
	var FULLTIME = document.getElementById('FULLTIME');
	var beginDateInput = document.getElementById('beginDate');
	var endDateInput = document.getElementById('endDate');
	endDateInput.disabled = true;
	if (PARTTIME.checked) {
		endDateInput.style.display = 'inline';
		var beginDate = new Date(beginDateInput.value);
		var oneMonthLater = new Date(beginDate.setMonth(beginDate.getMonth() + 1));
		endDateInput.value = oneMonthLater.toISOString().substring(0, 10);
	} else {
		endDateInput.style.display = 'inline';
		endDateInput.value = '';
	}
}
function validateEmail() {
    var email = document.getElementById("email").value;
    var pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
    if (email.match(pattern)) {
      document.getElementById("email-error").innerHTML = "";
      return true;
    } else {
      document.getElementById("email-error").innerHTML =
        "Please enter a valid email address";
      return false;
    }
  }
	</script>
	
	<c:out value="${param.lastName }" />
	<c:if test="${param.firstName != null && param.lastName != null}">
		
		<jsp:useBean id="employ" class="com.infinite.employ.Employ"/>
		<jsp:useBean id="beanDAO" class="com.infinite.employ.EmployDAO"/>		
		
		<c:if test="${param.birthday != null}">
   <fmt:parseDate value="${param.birthday}" pattern="yyyy-MM-dd" var="sdate" />
   <c:set var="sqlDate1" value="${beanDAO.convertDate(sdate)}" />
</c:if>
		<fmt:parseDate value="${param.beginDate}" pattern="yyyy-MM-dd" var="sdate" />
		<c:set var="sqlDate2" value="${beanDAO.convertDate(sdate)}" />
		<fmt:parseDate value="${param.endDate}" pattern="yyyy-MM-dd" var="sdate" />
		<c:set var="sqlDate3" value="${beanDAO.convertDate(sdate)}" />
		<jsp:setProperty property="firstName" name="employ"/>
		<jsp:setProperty property="lastName" name="employ"/>
		<jsp:setProperty property="jobtitle" name="employ"/>
		<jsp:setProperty property="department" name="employ"/>
		<jsp:setProperty property="peramanentAddress" name="employ"/>
		<jsp:setProperty property="localAddress" name="employ"/>
		<jsp:setProperty property="mobNo" name="employ"/>
		<jsp:setProperty property="gender" name="employ"/>
		<jsp:setProperty property="certifications" name="employ"/>
		<jsp:setProperty property="skills" name="employ"/>
		<jsp:setProperty property="qualifications" name="employ"/>
		<jsp:setProperty property="estatus" name="employ"/>
		<jsp:setProperty property="salary" name="employ"/>
		<jsp:setProperty property="birthday" name="employ" value="${sqlDate1}"/>
		<jsp:setProperty property="beginDate" name="employ" value="${sqlDate2}"/>
		<jsp:setProperty property="endDate" name="employ" value="${sqlDate3}"/>
		<jsp:setProperty property="email" name="employ"/>	
		<jsp:setProperty property="password" name="employ"/>					
		<c:out value="${beanDAO.addemploy(employ)}"/>
		
	</c:if>
</body>
</html>