<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<link rel="stylesheet" href="styles.css">
<script src="script.js"></script>
</head>
<body>
	<div class="reservation-form">
        <h1>Registration Form</h1>
        <form action="registration" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>
			
			<label for="phone">Phone Number:</label>
            <input type="tel" id="phoneNumber" name="phoneNumber" required><br><br>
            
            <label for="mailingAddress">Mailing Address:</label>
            <input type="text" id="mailingAddress" name="mailingAddress" required><br><br>

            
            <label for="billingAddress">Billing Address:</label>
            <input type="text" id="billingAddress" name="billingAddress">
            <label for="sameAsMailing">Same as Mailing Address:</label>
            <input type="checkbox" id="sameAsMailing" name="sameAsMailing" value="true"><br><br>

            <!--<label for="preferredDinerNumber">Preferred Diner #:</label>
            <input type="text" id="preferredDinerNumber" name="preferredDinerNumber" required><br><br> -->

            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>