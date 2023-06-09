<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>
<style>
body {
	background-color: #f2f2f2;
	font-family: Arial, Helvetica, sans-serif;
}

h1 {
	text-align: center;
	margin-top: 20px;
}

form {
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	display: grid;
	margin: 20px auto;
	max-width: 600px;
	padding: 20px;
}

input[type="text"] {
	border-radius: 5px;
	border: none;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
	color: #333;
	font-size: 16px;
	padding: 10px;
	width: 100%;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #4CAF50;
	border: none;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
	font-size: 16px;
	padding: 10px;
	transition: background-color 0.2s;
	width: 100%;
	box-sizing: border-box;
}

input[type="submit"]:hover {
	background-color: #3e8e41;
}

table {
	margin: 0 auto;
	width: 80%;
}

td {
	font-weight: bold;
	padding: 10px 0;
	text-align: right;
}

td+td {
	padding-left: 20px;
	text-align: left;
}
</style>
</head>
<body>
	<h1>Edit Employee</h1>
	<form:form action="/update/${employee.id}" method="POST"
		modelAttribute="employee">
		<table>
			<tr>
				<td>First Name:</td>
				<td><form:input path="firstname" /></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><form:input path="lastname" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td>Designation:</td>
				<td><form:input path="designation" /></td>
			</tr>
			<tr>
				<td>Salary:</td>
				<td><form:input path="salary" /></td>
			</tr>
		</table>
		<input type="submit" value="Update" />
	</form:form>
</body>
</html>