<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix= "fmt"  %>
<c:set var="app" value="${pageContext.request.contextPath }"></c:set>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>HakunaMatata</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath }/vendor/jquery/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath }/vendor/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/vendor/fontawesome-free-5.15.1-web/css/all.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/nav_basic.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/loading-toup.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/slick.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/slick.min.js"></script>
    
</head>
<body>
	<!-- onload="myFunction()" style="display:none;" id="myDiv" class="animate-bottom"
	<div id="loader"></div> -->
	<!-- <button onclick="topFunction()" id="myBtn" title="Go to top" class ="animation"><i class="fa fa-arrow-up" aria-hidden="true"></i></button>
	 -->
	<!-- Start Header -->
	<header id="home">
		<div class="home">
			<div class="hakunamatata-menu">
				<div class="container-xl">
					<nav class="navbar navbar-expand-lg navbar-dark p-0">
						<a class="navbar-brand logo emphasized-phrase" href="${pageContext.request.contextPath }/">
							Hakuna Matata
						</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mogo-menu" aria-controls="navbar-mogo-menu" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbar-mogo-menu">
							<ul class="navbar-nav menu-item ml-auto">
								<li class="nav-item active">
									<a class="nav-link" href="${pageContext.request.contextPath }/">HOME</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="${pageContext.request.contextPath }/tour">TOUR</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="${pageContext.request.contextPath }/about">ABOUT</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="${pageContext.request.contextPath }/blog">BLOG</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="${pageContext.request.contextPath }/contact">CONTACT</a>
								</li>
								<c:if test="${sessionScope['user'] == null }">
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath }/login">SIGN IN</a>
									</li>
								</c:if>
								<c:if test="${sessionScope['user'] != null }">
									<li class="nav-item">
										<p class="nav-link" >${sessionScope["user"].cusname}</p>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="${pageContext.request.contextPath }/login">Log Out</a>
									</li>
								</c:if>	
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>	
	</header>
	<!-- End Header -->