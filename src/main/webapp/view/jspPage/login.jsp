<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #F2F2F2;
		}
		
		.container {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 100vh;
		}
		
		.form-container {
			background-color: #FFF;
			padding: 20px;
			border-radius: 10px;
			box-shadow: 0px 0px 10px #BBB;
			text-align: center;
			max-width: 400px;
			width: 100%;
		}
		
		input[type=text], input[type=password] {
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			width: 100%;
		}
		
		button[type=submit] {
			background-color: #4CAF50;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			width: 100%;
		}
		
		button[type=submit]:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="form-container">
			<h2>Login</h2>
			<form method="post" action="loginSuccess">
				<label for="email">Username:</label>
				<input type="text" id="email" name="email" required>
				<br>
				<label for="password">Password:</label>
				<input type="password" id="password" name="password" required>
				<br>
				<button type="submit">Login</button>
				<div class="create-account">
		Don't have an account yet? <a href="Addemp">Create New Account</a>
	</div>
			</form>
		</div>
	</div>
</body>
</html>
