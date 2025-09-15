<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
<style>
	body {
		font-family: Arial, sans-serif;
		text-align: center;
	}
	
	form {
		margin-top: 20px;
	}
	
	.label {
		display: inline-block;
		width: 150px;
		text-align: right;
		margin-right: 10px;
		font-weight: bold;
	}
	
	input, select {
		width: 250px;
		padding: 8px;
		margin: 5px 0;
	}
	
	.submit-btn {
		margin-top: 15px;
	}
	
	.submit-btn input {
		width: 200px;
		padding: 10px;
	}
</style>
</head>
<body>
	<h1>Update User</h1>
	<hr/>
	
	<form action="/User/Update" method="POST">
		<input type="hidden" value="${user.getId()}" name="id"/>
		
		<div>
			<label class="label">Image Link:</label>
			<input type="text" value="${user.getUserImage()}" name="uImage"/>
		</div>
		
		<div>
			<label class="label">First Name:</label>
			<input type="text" value="${user.getFirstName()}" name="fName"/>
		</div>
		
		<div>
			<label class="label">Last Name:</label>
			<input type="text" value="${user.getLastName()}" name="lName"/>
		</div>
		
		<div>
			<label class="label">Gender:</label>
			<select name="gender">
				<option value="">--SELECT GENDER--</option>
				<option ${user.getUserGender() == 'Male' ? 'selected' : '' }>Male</option>
				<option ${user.getUserGender() == 'Female' ? 'selected' : '' }>Female</option>
				<option ${user.getUserGender() == "Don't Specify" ? 'selected' : '' }>Don't Specify</option>
			</select>
		</div>
		
		<div>
			<label class="label">Username:</label>
			<input type="text" value="${user.getUserName()}" name="uName"/>
		</div>
		
		<div>
			<label class="label">Password:</label>
			<input type="password" value="${user.getUserPass()}" name="uPass"/>
		</div>
		
		<div>
			<label class="label">Confirm Password:</label>
			<input type="password" value="${user.getUserPassConf()}" name="passConf"/>
		</div>
		
		<div class="submit-btn">
			<input type="submit" value="Update User"/>
		</div>
	</form>
</body>
</html>
