<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Form</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<style>
body {
	background-image: url('image/L.jpg');
	background-size: cover;
	background-position: center;
	height: 100vh;
}

.container {
	max-width: 500px;
	margin-top: 100px;
}

label {
	margin-bottom: 5px;
}
</style>
</head>
<body>
	<div class="container">
		<h1 class="text-center text-black mb-4">Register here</h1>
		<form action="/registerForm" method="post">

			<c:if test="${not empty error}">
				<div class="alert alert-danger" role="alert">${error}</div>
			</c:if>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" name="name" required>
			</div>
			<div class="form-group">
				<label for="contact">Contact No :</label> <input type="text"
					class="form-control" id="contact" name="contact" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="confirmPassword"> Confirm Password:</label> <input
					type="password" class="form-control" id="confirmPassword"
					name="confirmPassword" required>
			</div>
			<button type="submit" class="btn btn-primary btn-block">Register</button>
			<div>
				Already have an account? <a href="/login">Login</a>
			</div>
		</form>
	</div>
	<!-- Bootstrap JS and jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
