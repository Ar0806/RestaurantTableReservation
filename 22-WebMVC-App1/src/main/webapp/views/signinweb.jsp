<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Sign In</title>
<link rel="stylesheet" href="styles.css">
<script src="script.js"></script>
</head>
<body>
<div class="reservation-form">
        <h1>Sign In</h1>
        <form action="/login" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <input type="submit" value="Sign In">
        </form>
    </div>
</body>
</html>