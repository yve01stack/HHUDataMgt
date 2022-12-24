<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Sign Up</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark bg-dark">
			<div>
				<a href="#" class="navbar-brand"> 
					<img style="height:50px; weight:50px" src="https://isac.oss-accelerate.aliyuncs.com/wordpress/wp-content/uploads/2019/08/%E6%B2%B3%E6%B5%B7%E5%A4%A7%E5%AD%A6logo.jpg"/>				
				Student Management </a>
			</div>

		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<h1 class="text-center">Welcome to Student Information Management System</h1>
		<div class="card">
			<div class="card-body">
				<form action="register" method="post">

				<caption>
					<h2>Please Register</h2>
				</caption>

				<fieldset class="form-group">
					<label>Username</label> 
					<input type="text" class="form-control" name="username" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> 
					<input type="email" class="form-control" name="email" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Fullname</label> 
					<input type=text class="form-control" name="fullname" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Password</label> 
					<input type="password" class="form-control" name="password" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Register</button>
				<a class="btn btn-light" href="login">Login</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
