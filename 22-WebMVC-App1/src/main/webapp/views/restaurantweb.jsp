<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Reservation</title>
    <link rel="stylesheet" href="styles.css">
    <script src="script.js"></script>
</head>
<body>
<div class="header">
        <button id="registerButton" class="register-button" onclick="location.href='http://localhost:8080/register'" type="button">Register</button>
    	<button id="SigninButton" class="register-button"  onclick="location.href='http://localhost:8080/login'" type="button">Sign In</button>
    </div>
    <div class="reservation-form">
     <form action="/reserve" method="post">
        <h1>Restaurant Reservation</h1>
        <label for="name">Name:</label>
        <input type="text" id="name" required><br><br>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" required><br><br>

        <label for="date">Date:</label>
        <input type="date" id="date" required><br><br>

        <label for="time">Time:</label>
        <input type="time" id="time" required><br><br>

        <label for="guests"># of Guests:</label>
        <input type="number" id="guests" required><br><br>
        <button type="submit" id="searchButton">submit</button>
         </form>
    </div>

    <div class="available-tables">
        <h2>Available Tables</h2>
        <ul id="tableList">
            <c:forEach items="${availableTables}" var="table">
            <li>Table ${table.getId()} - Capacity: ${table.getCapacity()}</li>
        </c:forEach>
        </ul>
    </div>
</body>
</html>