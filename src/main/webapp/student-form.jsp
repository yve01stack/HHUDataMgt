<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
//allow access only if session exists
String user = null;
if(session.getAttribute("user") == null){
	response.sendRedirect("signin");
}else user = (String) session.getAttribute("user");
%>
<html>
<head>
<title>Student Management</title>
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

			<ul class="navbar-nav">
				<li><a href="student" class="nav-link">Students</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="row">
		<div class="container">
			<div>
				<p><strong>Username: </strong><%=user %></p>
				<form action="logout" method="post">
					<input type="submit" value="Logout" class="btn btn-light">
		    	</form>
			</div>
		</div>
	</div>
	
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${student != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${student == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${student != null}">
            			Edit Student
            		</c:if>
						<c:if test="${student == null}">
            			Add New Student
            		</c:if>
					</h2>
				</caption>

				<c:if test="${student != null}">
					<input type="hidden" name="id" value="<c:out value='${student.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Student ID</label> <input type="text"
						value="<c:out value='${student.student_no}' />" class="form-control"
						name="student_no" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Student Name</label> <input type="text"
						value="<c:out value='${student.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Student Email</label> <input type="email"
						value="<c:out value='${student.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Student Country</label> <input type="text"
						value="<c:out value='${student.country}' />" class="form-control"
						name="country">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Student College</label> <input type="text"
						value="<c:out value='${student.college}' />" class="form-control"
						name="college">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
