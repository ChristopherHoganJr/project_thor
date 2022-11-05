<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project Thor - Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/main.css">
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container">
			<a class="navbar-brand" href="/">Project Thor</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mt-2 mb-lg-0 mt-lg-0 gap-3">
					<li class="nav-item"><a class="nav-link btn btn-warning"
						aria-current="page" href="/signup">Sign Up</a></li>
					<li class="nav-item"><a
						class="nav-link btn btn-success text-light" aria-current="page"
						href="/login">Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Hero Section -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col">
					<h1>
						Login - Project <span class="heroHeadingSpan">{Code
							Named}</span> Thor
					</h1>
					<form action="">
						<div class="mb-3">
							<label for="email" class="form-label">Email address:</label> <input
								type="email" class="form-control" id="email"
								placeholder="name@example.com">
						</div>
						<div class="mb-3">
							<label for="password" class="form-label">Password:</label> <input
								type="password" class="form-control" id="password">
						</div>
						<button class="btn btn-success">Login</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	   
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>

