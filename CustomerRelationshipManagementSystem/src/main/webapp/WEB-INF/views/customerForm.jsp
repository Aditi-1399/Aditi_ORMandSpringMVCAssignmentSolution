<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Form</title>
</head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<style>
body {
  background-color: #ffffe6;
font-family: Verdana,Arial sans-serif;
  font-size: 1.75vw;
}
</style>
<body>
<div class="container">

		<h3></h3>
		<hr>

		<p class="h4 mb-4">Add Customer</p>

		<form action="/CustomerRelationshipManagementSystem/save" method="POST">

			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="customerId" value="${Customer.customerId}"/>

			<div class="form-inline">
				<input type="text" name="firstName" value="${Customer.firstName}"
					class="form-control mb-4 col-4" placeholder="First Name" required>



			</div>

			<div class="form-inline">

				<input type="text" name="lastName" value="${Customer.lastName}"
					class="form-control mb-4 col-4" placeholder="Last Name" required>



			</div>

			<div class="form-inline">

				<input type="email" name="email" value="${Customer.email}"
					class="form-control mb-4 col-4" placeholder="Email" required>



			</div>

			<button type="submit" class="btn btn-success col-2">Save</button>

		</form>

		<hr>
		<a href="/CustomerRelationshipManagementSystem">Back to Customers List</a>

	</div>
</body>
</html>