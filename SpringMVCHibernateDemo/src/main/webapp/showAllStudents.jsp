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
	<table border="1">
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="student" items="${students}">
		<tr>
		<c:url	var="showStudentLink" value="/getStudent">
			<c:param name="id" value="${student.id}"></c:param>
		</c:url>
			<td><a href="${showStudentLink}">${student.id}</a></td>
			<td>${student.firstName}</td>
			<td>${student.lastName}</td>
			<td>${student.email}</td>
			<td><a href="/updateStudent?id=${student.id}">Update</a></td>
			<td><a href="/deleteStudent?id=${student.id}">Delete</a></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>