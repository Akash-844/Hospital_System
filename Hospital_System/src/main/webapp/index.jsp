<%@page import="com.db.Dbconnect" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
<%@include file="component/css.jsp"%>
<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/Navbar.jsp"%>
	
	
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hos.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hos2.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hos3.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="container p-3">
		<p class="text-center fs-2">About Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Pellentesque habitant morbi tristique senectus et netus
									et malesuada fames ac turpis egestas.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Good Environment</p>
								<p>Pellentesque habitant morbi tristique senectus et netus
									et malesuada fames ac turpis egestas.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Professional Doctors</p>
								<p>Pellentesque habitant morbi tristique senectus et netus
									et malesuada fames ac turpis egestas.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Pellentesque habitant morbi tristique senectus et netus
									et malesuada fames ac turpis egestas.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="col-md-4 d-flex justify-content-center align-items-center">
				<img src="img/doc2.jpg" height="300px">
			</div>
		</div>
	</div>
	<hr>
	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/doc1.jpg" width="250px" height="300px" alt="doc2">
						<p class="fw-bold fs-5">DR.Samuani simi</p>
						<p class="fs-7">CEO & Chairman</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/doc4.jpg" width="250px" height="300px" alt="doc2">
						<p class="fw-bold fs-5">DR.Siva Kumar</p>
						<p class="fs-7">Doctor</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/doc3.jpg" width="250px" height="300px" alt="doc2">
						<p class="fw-bold fs-5">Dr.Niuise Paule</p>
						<p class="fs-7">Doctor</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/doc5.jpg" width="280px" height="300px" alt="doc2">
						<p class="fw-bold fs-5">Dr.Mathue Samuel</p>
						<p class="fs-7">Doctor</p>
					</div>
				</div>
			</div>
		</div>

	</div>

<%@include file="component/Footer.jsp"%>

</body>
</html>