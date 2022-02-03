<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Registration Form</title>
<style>
body {
	font-family: sans-serif;
	background: linear-gradient(-45deg, #141e30, #243b55);
}

.box {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 500px;
	padding: 50px;
	transform: translate(-50%, -50%);
	background: rgba(0, 0, 0, .5);
	box-sizing: border-box;
	box-shadow: 0 15px 25px rgba(0, 0, 0, .6);
	border-radius: 10px;
}

h1 {
	margin: 0 0 30px;
	padding: 0;
	color: #fff;
	text-align: center;
}

.user-box {
	position: relative;
}

.user-box input {
	width: 90%;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid #fff;
	outline: none;
	background: transparent;
}

.user-box label {
	top: 0;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	pointer-events: none;
	transition: .5s;
}

button {
	background-color: #03e9f4;
	color: black;
	border: none;
	padding: 8px 30px;
	border-radius: 15px;
	font-size: 15px;
	cursor: pointer;
	margin: 5px 25px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="box">
		<h1>Registration Form</h1>
		<form action="<%=request.getContextPath()%>/register" method="post">
			<div class="user-box">
				<label>First name :</label><input type="text" name="firstname"
					required><br> <br>
			</div>
			<div class="user-box">
				<label>Second name :</label><input type="text" name="lastname"
					required><br> <br>
			</div>
			<div class="user-box">
				<label>User Name : </label><input type="text" name="username"
					required><br> <br>
			</div>
			<div class="user-box">
				<label>Password :</label> <input type="password" name="password"
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
					title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"
					required><br> <br>
			</div>
			<div class="user-box">
				<label>Address : </label><input type="text" name="address" required><br>
				<br>
			</div>
			<div class="user-box">
				<label>Contact No :</label> <input type="text" name="contactno"
					pattern="[6789][0-9]{9}" title="Please enter valid contact no"
					required><br>
			</div>
			<div class="submit-btn">
				<button type="submit">SUBMIT</button>
			</div>
		</form>
	</div>
	<br>
</body>
</html>