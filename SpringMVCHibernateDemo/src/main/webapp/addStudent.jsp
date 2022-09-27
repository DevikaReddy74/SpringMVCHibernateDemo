<!-- The below jsp link is for form tag libraries -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Student Relationship Model</title>
<style type="text/css">
.error {
	color: red
}

.green {
	color: green
}
</style>
</head>
<body>

	<h3>Fill Student Details</h3>

	<form:form action="saveStudent" modelAttribute="student">
		<!-- for updating the data we need this hidden id -->
		<form:hidden path="id"/>
	
	First name:* <form:input path="firstName" />
		<form:errors path="firstName" cssClass="error" />

		<br />
		<br />	
	Last name: <form:input path="lastName" />
		<br />
		<br />
	
	Email: <form:input path="email" />
		<form:errors path="email" cssClass="error" />
		<br />
		<br />
		<input type="submit" value="submit" />

	</form:form>
	<br />
	<a href="home">Home</a>

	<h4 class="green">${message}</h4>
</body>
</html>