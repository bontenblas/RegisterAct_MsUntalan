<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Geralao Act 4 - Register</title>
<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		font-family: Verdana, sans-serif; 
	}
	
	#header {
		align-items: center;
		text-align: center;
		margin: 30px auto;
		padding: auto;
	}
	
	#form #error{
		display: flex;
		justify-content: center;
		align-items: center;
		margin: 10px auto;
		text-align: center;
		font-size: 18px;
	}
	
	#error {
		font-size: 24px;
	}
	
	.fields {
		display: flex;
		justify-content: center;
		flex-direction: row;
		margin: 40px auto;
	}
	
	.label {
		margin: auto 10px;
		font-size: 22px;
	}
	
	select {
		width: 160px;
		height: 40px;
		font-size: 13px;
		padding: 10px auto;
		text-align: center;
	}
	
	input {
		width: 250px;
		font-size: 14px;
		padding: 10px;
	}
</style>
</head>
<body>

	<h1 id="header"> Create An Account </h1>
	<hr/>
	
	<div id="form">
		<form action="/All/Users" method="POST">
			<div class="fields"> 
				<h1 class="label" id="userImage"> Image Link: </h1>
				<input type="text" name="uImage" placeholder="Enter Image"/>
			</div>
			
			<div class="fields"> 
				<h1 class="label" id="firstName"> First Name: </h1>
				<input type="text" name="fName" placeholder="Enter First Name"/>
			</div>
			
			<div class="fields"> 
				<h1 class="label" id="lastName"> Last Name: </h1>
				<input type="text" name="lName" placeholder="Enter Last Name"/>
			</div>
			
			<div class="fields"> 
				<h1 class="label" id="userGender"> Gender: </h1>
				<select name = "gender">
					<option value="">--SELECT GENDER--</option>
					<option>Male</option>
					<option>Female</option>
					<option>Don't Specify</option>
				</select>
			</div>
			
			<div class="fields"> 
				<h1 class="label" id="username"> Username: </h1>
				<input type="text" name="uName" placeholder="Enter Username"/>
			</div>
			
			<div class="fields"> 
				<h1 class="label" id="password"> Password: </h1>
				<input type="password" name="uPass" placeholder="Enter Password"/>
			</div>
			
			<div class="fields"> 
				<h1 class="label" id="passConfirm"> Confirm Password: </h1>
				<input type="password" name="passConf" placeholder="Confirm Password"/>
			</div>
			
			
			<div class="fields"><input type="submit" value="Register"/></div>
			<div><a href="/register"></a></div>
		</form>
		
		<p id="error"> ${errorMessage} </p>
	</div>
</body>
</html>