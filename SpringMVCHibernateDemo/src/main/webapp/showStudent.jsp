<!-- The below jsp code is for is for JSTL foreach -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Student Relationship Model</title>
<link href="/css/style.css" rel="stylesheet" >

</head>
<body>
	<h1 class="headding">Welcome to This Student Relationship Model</h1>
	<a href="home">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="addStudent" >Add Student</a>
	<br/><br/>
	<h1>Student Details</h1>
	First Name : ${student.firstName}<br/>
	Last Name: ${student.lastName}<br/>
	Email : ${student.email}

</body>
</html>