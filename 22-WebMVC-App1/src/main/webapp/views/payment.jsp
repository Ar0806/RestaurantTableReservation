<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Payment Page</title>
    <style type="text/css">
    /* Reset default margin and padding */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Style the body */
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 0;
    text-align: center;
}

/* Style the header */
h2 {
    background-color: #3498db;
    color: #fff;
    padding: 10px;
}

/* Style the form container */
form {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0px 0px 10px #ccc;
}

/* Style labels and input fields */
label {
    display: block;
    margin-top: 10px;
}

input[type="text"] {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* Style the submit button */
input[type="submit"] {
    background-color: #3498db;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #207db5;
}

/* Add some spacing between elements */
br {
    margin: 10px 0;
}
    
    </style>
</head>
<body>
    <script>
        function validateForm() {
            var cardNumber = document.getElementById("cardNumber").value;
            var cvv = document.getElementById("cvv").value;
            var expiryDate = document.getElementById("expiryDate").value;
            
            // Simple client-side validations
            if (cardNumber.length !== 16) {
                alert("Card number must be 16 digits.");
                return false;
            }
            
            if (cvv.length !== 3) {
                alert("CVV must be 3 digits.");
                return false;
            }

            if (expiryDate.length !== 5 || !expiryDate.match(/^\d{2}\/\d{2}$/)) {
                alert("Expiry date must be in MM/YY format.");
                return false;
            }
            
            return true;
        }
    </script>
</head>
<body>
    <h2>Payment Page</h2>
   <div class="payment-form">
    <form action="/success" method="post" onsubmit="return validateForm()">
        <label for="cardNumber">Card Number:</label>
        <input type="text" id="cardNumber" name="cardNumber" maxlength="16" required><br><br>
        
        <label for="cvv">CVV:</label>
        <input type="text" id="cvv" name="cvv" maxlength="3" required><br><br>
        
        <label for="expiryDate">Expiry Date (MM/YY):</label>
        <input type="text" id="expiryDate" name="expiryDate" maxlength="5" required><br><br>
        
        <input type="submit" value="Submit Payment">
    </form>
   </div>
</body>
</html>