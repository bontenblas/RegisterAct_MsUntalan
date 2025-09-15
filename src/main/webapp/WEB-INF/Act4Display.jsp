<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Registered Users</title>
<style>
* {
    font-family: Verdana, sans-serif;
    box-sizing: border-box;
}
body {
    background: #fafafa;
    margin: 0;
    padding: 20px;
}
h1 {
    text-align: center;
    margin-bottom: 10px;
    text-transform: uppercase;
}
hr {
    border: none;
    border-top: 1px solid #ccc;
    margin: 20px 0;
}
a {
    color: #4a68d6;
    text-decoration: none;
    font-weight: bold;
}
a:hover {
    text-decoration: underline;
}
a[href="/register"] {
    display: block;
    text-align: center;
    margin-bottom: 20px;
}
ul {
    list-style: none;
    padding: 20px;
    margin: 20px auto;
    max-width: 400px;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 10px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
}
ul li {
    margin: 8px 0;
}
ul li img {
    display: block;
    margin: 0 auto 10px auto;
    border-radius: 6px;
    object-fit: cover;
}
/* Button container */
.btn-group {
    display: flex;
    gap: 10px;
    margin-top: 15px;
}
.btn-group a,
.btn-group input[type="submit"] {
    flex: 1;
    text-align: center;
    padding: 8px 0;
    font-size: 14px;
    border-radius: 6px;
    border: none;
    cursor: pointer;
    text-decoration: none;
    color: #fff;
}
.btn-group a {
    background: #4a68d6;
}
.btn-group a:hover {
    background: #3b55b4;
}
.btn-group input[type="submit"] {
    background: #e74c3c;
}
.btn-group input[type="submit"]:hover {
    background: #c0392b;
}
</style>
</head>
<body>
    <h1>All Registered Users</h1>
    <hr/>
    <a href="/register">Create New Account</a>
    <c:forEach items="${regUser}" var="data">
        <ul>
            <li><strong>Image:</strong> <img src="${data.getUserImage()}" width="100" height="120"/> </li>
            <li><strong>First Name:</strong> ${data.getFirstName()}</li>
            <li><strong>Last Name:</strong> ${data.getLastName()}</li>
            <li><strong>Gender:</strong> ${data.getUserGender()}</li>
            <li><strong>Username:</strong> ${data.getUserName()}</li>
            <li><strong>Password:</strong> ${data.getUserPass()}</li>
            <li><strong>Confirm Password:</strong> ${data.getUserPassConf()}</li>
            
            <div class="btn-group">
                <a href="/User/Update/${data.getId()}">Update</a>
                <form method="POST" action="/User/Delete" style="margin:0; flex:1;">
                    <input type="hidden" name="delUser" value="${data.getUserName()}" />
                    <input type="submit" value="Delete User" />
                </form>
            </div>
        </ul>
    </c:forEach>
</body>
</html>
