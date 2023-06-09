<!DOCTYPE html>
<html>
<head>
	<title>Employee Added</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
			margin: 0;
			padding: 0;
		}
		.container {
			max-width: 600px;
			margin: 0 auto;
			padding: 20px;
			background-color: #fff;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0,0,0,0.2);
			text-align: center;
		}
		h1 {
			font-size: 36px;
			margin-top: 0;
			color: #007bff;
		}
		p {
			font-size: 24px;
			color: #555;
		}
		button {
			background-color: #007bff;
			color: #fff;
			border: none;
			padding: 10px 20px;
			font-size: 18px;
			border-radius: 5px;
			cursor: pointer;
			margin-top: 20px;
		}
		button:hover {
			background-color: #0056b3;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Employee Added!</h1>
		<p>The employee has been successfully added to the database.</p>
	
		<jsp:include page="login.jsp"/>
	</div>
</body>
</html>
