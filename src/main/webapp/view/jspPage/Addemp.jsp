<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<style>
    form {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 50px;
    }
    input[type=text], input[type=password], input[type=email], input[type=number] {
        width: 80%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
    }
    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type=submit]:hover {
        background-color: #45a049;
    }
    .container {
        width: 500px;
        padding: 16px;
        background-color: #f2f2f2;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        margin: auto;
    }
    h2 {
        text-align: center;
    }
    .error {
        color: red;
    }
</style>
</head>
<body>
    <h2>Registration Form</h2>
    <div class="container">
        <form action="register" method="post"
        modelAttribute="Employee">
         <input type="hidden" placeholder="Enter First Name" name="id"  value="0" required>
            <label for="firstname"><b>First Name</b></label>
            <input type="text" placeholder="Enter First Name" name="firstname" required>
            
            <label for="lastname"><b>Last Name</b></label>
            <input type="text" placeholder="Enter Last Name" name="lastname" required>
            
            <label for="email"><b>Email</b></label>
            <input type="email" placeholder="Enter Email" name="email" required>
            
            <label for="password"><b>Password</b></label>
            <input type="text" placeholder="Enter Password" name="password" required>
              
            <label for="designation"><b>Designation</b></label>
            <input type="text" placeholder="Enter Designation" name="designation" required>
            
            <label for="salary"><b>Salary</b></label>
            <input type="number" placeholder="Enter Salary" name="salary" required>
            
            
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
