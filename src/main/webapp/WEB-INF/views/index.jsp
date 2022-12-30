<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="ISO-8859-1">

</head>
<body>
	<div class="container mt-3">
			<div class="row">
				<div class="col-md-12">
					<div class="card text-white bg-success mb-3" style="width: 60rem;">
						<div class="card-body">
							<h1 class="text-center mb-3">CRM - Customer Relationship
							Manager</h1>
						</div>
					</div>
					<div class="container mb-3">
						<a href="showForm" class="btn btn btn-secondary">Add
							Customer</a>
					</div>
					<table class="table">
						<thead class="bg-success">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">First Name</th>
								<th scope="col">Last Name</th>
								<th scope="col">Email</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${customers}" var="cus">
								<tr>
									<th scope="row">${cus.id }</th>
									<td>${cus.firstName}</td>
									<td>${cus.lastName}</td>
									<td>${cus.email}</td>
									<td><a href="delete/${cus.id }"> <i
										class="fas fa-trash text-danger" style="font-size: 25px;">
										</i>
										</a>
										<a href="update/${cus.id }"> <i
												class="fas fa-pen-nib text-primary" style="font-size: 25px;">
											</i>
										</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
</body>
</html>