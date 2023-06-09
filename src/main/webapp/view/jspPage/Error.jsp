<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Error</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		body {
			font-family: Arial, sans-serif;
			background-image: url("https://example.com/wrong-password-image.jpg"); /* The image used */
			background-color: #cccccc; /* Used if the image is unavailable */
			height: 500px; /* You must set a specified height */
			background-position: center; /* Center the image */
			background-repeat: no-repeat; /* Do not repeat the image */
			background-size: cover;
			background-color: #f2f2f2;
		}

		.container {
			max-width: 400px;
			margin: 0 auto;
			padding: 5px;
		     text-align: center;
		}

		h1 {
			font-size: 36px;
			margin-top: 0;
			color: #f00;
		}

		p {
			font-size: 24px;
			color: #555;
		}

		.message {
			display: flex;
			flex-direction: row;
			align-items: center;
			justify-content: center;
			margin-top: 30px;
			background-color: rgba(255, 255, 255, 0.7);
			padding: 10px;
			border-radius: 5px;
		}

		.message img {
			height: 100px;
			margin-right: 20px;
		}

		.message p {
			font-size: 18px;
			color: #f00;
			margin: 0;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Error</h1>
		<div class="message">
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZPRzHZkViGEeq_hbC4aZlULYTSPVfx_2ImSdEtyYNMpPdsgRrXP935mIG-pYZW-_REAM&usqp=CAU" alt="Incorrect user ID or password">
			<p><%= request.getAttribute("error") %></p>
		</div>
		<jsp:include page="login.jsp" />
	</div>
</body>
</html>
