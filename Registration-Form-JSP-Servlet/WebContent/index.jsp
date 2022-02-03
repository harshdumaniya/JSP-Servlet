<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Employee Registration Form</title>
			<link rel="stylesheet" type="text/css" href="/Registration-Form-JSP-Servlet/style.css">
	</head>

	<body>
			<div class="box">
			<h1>Registration Form</h1>
			<form action="<%=request.getContextPath()%>/register" method="post">
				<div class="user-box">
					<label>First name :</label>
						<input type="text" name="firstname" pattern="^[A-Za-z]*(([,.] |[ '-])[A-Za-z][a-z]*)*(\.?)$" title="numbers not allowed" required><br><br>
					<label>Last name :</label>
						<input type="text" name="lastname" pattern="^[A-Za-z]*(([,.] |[ '-])[A-Za-z][a-z]*)*(\.?)$" title="numbers not allowed" required><br><br>
					<label>User Name : </label>
						<input type="text" name="username" required><br> <br>
					<label>Password :</label>
						<input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters" required><br> <br>
					<label>Address : </label>
						<input type="text" name="address" required><br><br>
					<label>Contact No :</label>
						<input type="text" name="contactno" pattern="[6789][0-9]{9}" title="Please enter a mobile number start with 6 and only 10 digits." required><br>
					<div class="submit-btn">
						<button type="submit">SUBMIT</button>
				</div>
				</div>
			</form>
			</div>
	</body>
</html>