<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Error</title>
<style>
    body {
        background-image: linear-gradient(to bottom right, #33ccff, #cc99ff); /* change background to gradient */
        font-family: Arial, sans-serif;
        color: #fff; /* change text color to white */
    }
    .container {
        margin: auto;
        max-width: 500px;
        text-align: center;
        padding-top: 50px;
        background-color: rgba(0,0,0,0.5);
        border-radius: 20px;
        box-shadow: 0 0 20px rgba(0,0,0,0.5);
        padding: 30px;
    }
    h1 {
        font-size: 36px;
        color: #fff;
        margin-bottom: 30px;
    }
    h2 {
        font-size: 24px;
        margin-bottom: 20px;
    }
    h3 {
        font-size: 20px;
        margin-bottom: 20px;
    }
    p {
        font-size: 18px;
        margin-bottom: 30px;
    }
    button {
        background-color: #228B22;
        color: ;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }
    button:hover {
        background-color: #FFA000;
    }
    a {
        color: white;
        text-decoration: none;
    }
    button a {
        color: white;
        text-decoration: none;
    }
    .new-employee {
        background-color: #32CD32;
        border-radius: 5px;
        padding: 10px 20px;
    }
    .new-employee:hover {
        background-color: #b366ff;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Registration Error</h1>
        <h3>The entered email address is already in use. Please try again with a different email.</h3>
        <br>
        <h2>Or log in with an already registered email:</h2>
        <button onclick="location.href='/login'">Log In</button>
        
        <br>
        <br>
        <p>
            <span>you can create a new employee with a different email:</span>
        </p>
        <p>
            <button class="new-employee">
                <a href="/Addemp">Create New Employee</a>
            </button>
        </p>
    </div>
</body>
</html>
