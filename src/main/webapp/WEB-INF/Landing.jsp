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
<title>Project Thor</title>
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
			<a class="navbar-brand" href="#">Project Thor</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mt-2 mb-lg-0 mt-lg-0 gap-3">
					<li class="nav-item"><a class="nav-link btn btn-warning"
						aria-current="page" href="#">Sign Up</a></li>
					<li class="nav-item"><a
						class="nav-link btn btn-success text-light" aria-current="page"
						href="#">Login</a></li>
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
						Project <span class="heroHeadingSpan">{Code Named}</span> Thor
					</h1>
					<p>The project that for the real athletes wanting to document
						their training without having to pay huge corporate
						advertisements. Using this project will continue to be free while
						under initial development and accounts made in this development
						period will have special access to new features even after we've
						officially launched. Thank you for using our project to help smash
						your fitness goals!</p>
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

