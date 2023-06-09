<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Employee List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin: 20px 0;
}

th, td {
	text-align: left;
	padding: 8px;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #007bff;
	color: #fff;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

/* Add new CSS styles for delete and edit buttons */
button {
	background-color: #007bff;
	color: #fff;
	padding: 8px 12px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #0069d9;
}

.delete-btn {
	background-color: #dc3545;
}

.delete-btn:hover {
	background-color: #c82333;
}

.edit-btn {
	background-color: #28a745;
}

.edit-btn:hover {
	background-color: #218838;
}

button {
  font-size: 14px;
  font-weight: bold;
  text-transform: uppercase;
  letter-spacing: 1px;
}

.delete-btn {
  background-color: #dc3545;
  color: #fff;
  border: none;
  border-radius: 4px;
  padding: 8px 12px;
  margin-right: 10px;
  cursor: pointer;
}

.delete-btn:hover {
  background-color: #c82333;
}

.edit-btn {
  background-color: #28a745;
  color: #fff;
  border: none;
  border-radius: 4px;
  padding: 8px 12px;
  margin-right: 10px;
  cursor: pointer;
}

.edit-btn:hover {
  background-color: #218838;
}

</style>
</head>
<body>
	<center>
		<h1>View Employees</h1>
	</center>
	<table>
		<thead>
			<tr>
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Password</th>
				<th>Email</th>
				<th>Designation</th>
				<th>Salary</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="employee" items="${employees}">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.firstname}</td>
					<td>${employee.lastname}</td>
					<td>${employee.password}</td>
					<td>${employee.email}</td>
					<td>${employee.designation}</td>
					<td>${employee.salary}</td>
					<td><a class="edit-btn" href="/edit/${employee.id}">Edit</a> <a
						class="delete-btn" href="/delete/${employee.id}"
						onclick="return confirm('Are you sure you want to delete this employee?')">Delete</a>
					</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- Add a link to create a new employee -->
	<center>
		<p>
			<a href="/Addemp">Create New Employee</a>
		</p>
	</center>

</body>
</html>
