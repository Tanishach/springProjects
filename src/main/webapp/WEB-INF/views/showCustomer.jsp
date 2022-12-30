<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6" offset-md-3>
				<div class="card text-white bg-success mb-3" style="width: 60rem;">
					<div class="card-body">
						<h1 class="text-center mb-3">CRM - Customer Relationship
							Manager</h1>
					</div>
				</div>

				<h1 class="text-center mb-3">Save Customer</h1>

				<form action="handle-customer" method="post">
					<div class="form-group">
						<label for="name">First Name</label> <input type="text"
							class="form-control" id="firstName" name="firstName"
							placeholder="Enter the First name here">
					</div>

					<div class="form-group">
						<label for="name">Last Name</label> <input type="text"
							class="form-control" id="lastName" name="lastName"
							placeholder="Enter the Last name here">
					</div>

					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" class="form-control" id="email"
							name="email" aria-describedby="emailHelp"
							placeholder="Enter email"> <small id="emailHelp"
							class="form-text text-muted">We'll never share your email
							with anyone else.</small>
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type=submit class="btn btn-secondary">Save</button>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>