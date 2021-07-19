<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>HakunaMatata</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath }/resources/client/vendor/jquery/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/client/vendor/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/vendor/fontawesome-free-5.15.1-web/css/all.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/css/style.css">
</head>
<body>
	<!-- Start Header -->
	<header id="home">
		<div class="home">
			<div class="hakunamatata-menu">
				<div class="container-xl">
					<nav class="navbar navbar-expand-lg navbar-dark p-0">
						<a class="navbar-brand logo emphasized-phrase" href="#">
							Hakuna Matata
						</a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-mogo-menu" aria-controls="navbar-mogo-menu" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbar-mogo-menu">
							<ul class="navbar-nav menu-item ml-auto">
								<li class="nav-item active">
									<a class="nav-link" href="/hakunamatata/home"">HOME</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="/hakunamatata/tour">TOUR</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="/hakunamatata/about">ABOUT</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="/hakunamatata/blog">BLOG</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="/hakunamatata/contact">CONTACT</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="/hakunamatata/login">SIGN IN</a>
								</li>	
							</ul>
						</div>
					</nav>
				</div>
			</div>
			<div class="home-slide text-center">
				<div class="container-fluid">
					<div id="home-slide" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item">
								<h2 class="creative-template">Hakuna Matata</h2>
								<h1 class="emphasized-phrase slogan">Enjoy<br>
									your life
								</h1>
								<hr>
							</div>
							<div class="carousel-item">
								<h2 class="creative-template">Hakuna Matata</h2>
								<h1 class="emphasized-phrase slogan">Discover<br>
									the Word
								</h1>
								<hr>
							</div>
							<div class="carousel-item active">
								<h2 class="creative-template">Hakuna Matata</h2>
								<h1 class="emphasized-phrase slogan">Invest in<br>
									yourself
								</h1>
								<hr>
							</div>
						</div>
						<div class="container-xl">
							<div class="row carousel-indicators">
								<div class="col-sm-4 col-md-4" data-target="#home-slide" data-slide-to="0">
									<div class="carousel-box">
										<!-- <hr id="hr-left"> -->
									</div>
								</div>
								<div class="col-sm-4 col-md-4" data-target="#home-slide" data-slide-to="1">
									<div class="carousel-box">
										<!-- <hr id="hr-center"> -->
									</div>
								</div>
								<div class="col-sm-4 col-md-4 active" data-target="#home-slide" data-slide-to="2">
									<div class="carousel-box">
										<!-- <hr id="hr-right"> -->
									</div>
								</div>								
							</div>
						</div>
					</div>
				</div>			
			</div>
		</div>	
	</header>
	<!-- End Header -->

	<!-- Start SreachTable -->
	
	<!-- <div class="container-xl sreachtable">
		<div class="search-form home-page">
			<div class="row ">
				<div class="search-fullframe">
					<div class=" ">
						<i class="fas fa-map-marker-alt"></i>
						<input id="searchText" type="text" maxlength="200" placeholder="BẠN MUỐN ĐI ĐÂU"> 
					</div>
				</div>
				<div class="start-date">
					<input id="searchText" type="text" maxlength="200" placeholder="NGÀY KHỞI HÀNH">
				</div>
				<div class="end-date">
					<input id="searchText" type="text" maxlength="200" placeholder="MỨC GIÁ">
				</div>
				<div class="search-btn ">
					<button>Tìm kiếm</button>
				</div>
			</div>
		</div>
	</div> -->

	<!-- End SreachTable -->

	<!-- Start Main -->
	<main>
	<!--Start SalePromotion -->
	<section class="sale" id="sale">
		<div class="about container-fluid text-center">
			<h2>KHUYẾN MÃI ĐẶC BIỆT</h2>
			<p>Sale promotion</p>
			<hr class="h-line">
		</div>		
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div id="owl-one" class="owl-carousel">
						<!-- 1 -->
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/resources/client/images/FeaturedTour/buonmathuat.jpg" alt="">
								<div class="news-grid-box">
									<h1>05</h1>
									<p>HCM</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: Buôn Ma Thuột
									- Làng Cà Phê Trung</span>
								</div>
								<div class="text">
									<p class="sale-time"> <i class="fa fa-clock"></i> 4 ngày 3 đêm</p>
									<p class="sale-schedule"> <i class="fa fa-calendar"></i> 05/07/2021</p>
									<p class="sale-place"> <i class="fa fa-user"></i> Còn 10 chỗ </p>
									<div class="sale-discount">
										<span class="sale-pre">4,499,000 đ</span>	
										<span class="sale-dis">5,500,000 đ</span>
									</div>																	
								</div>
							</div>
							</a>
						</div>
						<!-- 2 -->
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/resources/client/images/FeaturedTour/buonmathuat.jpg" alt="">
								<div class="news-grid-box">
									<h1>05</h1>
									<p>HCM</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: Buôn Ma Thuột
									- Làng Cà Phê Trung</span>
								</div>
								<div class="text">
									<p class="sale-time"> <i class="fa fa-clock"></i> 4 ngày 3 đêm</p>
									<p class="sale-schedule"> <i class="fa fa-calendar"></i> 05/07/2021</p>
									<p class="sale-place"> <i class="fa fa-user"></i> Còn 10 chỗ </p>
									<div class="sale-discount">
										<span class="sale-pre">4,499,000 đ</span>	
										<span class="sale-dis">5,500,000 đ</span>
									</div>																	
								</div>
							</div>
							</a>
						</div>
						<!-- 3 -->
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/resources/client/images/FeaturedTour/buonmathuat.jpg" alt="">
								<div class="news-grid-box">
									<h1>05</h1>
									<p>HCM</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: Buôn Ma Thuột
									- Làng Cà Phê Trung</span>
								</div>
								<div class="text">
									<p class="sale-time"> <i class="fa fa-clock"></i> 4 ngày 3 đêm</p>
									<p class="sale-schedule"> <i class="fa fa-calendar"></i> 05/07/2021</p>
									<p class="sale-place"> <i class="fa fa-user"></i> Còn 10 chỗ </p>
									<div class="sale-discount">
										<span class="sale-pre">4,499,000 đ</span>	
										<span class="sale-dis">5,500,000 đ</span>
									</div>																	
								</div>
							</div>
							</a>
						</div>
						<!-- 4 -->
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/resources/client/images/FeaturedTour/buonmathuat.jpg" alt="">
								<div class="news-grid-box">
									<h1>05</h1>
									<p>HCM</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: Buôn Ma Thuột
									- Làng Cà Phê Trung</span>
								</div>
								<div class="text">
									<p class="sale-time"> <i class="fa fa-clock"></i> 4 ngày 3 đêm</p>
									<p class="sale-schedule"> <i class="fa fa-calendar"></i> 05/07/2021</p>
									<p class="sale-place"> <i class="fa fa-user"></i> Còn 10 chỗ </p>
									<div class="sale-discount">
										<span class="sale-pre">4,499,000 đ</span>	
										<span class="sale-dis">5,500,000 đ</span>
									</div>																	
								</div>
							</div>
							</a>
						</div>
				</div>
			</div>
	</section>
	<!--End SalePromotion-->

	<!-- Start Quote -->
	<div id="quote" class="quote">
		<div class="container-xl">
			<div id="carousel-service-section" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">

					<div class="carousel-item">
						<div class="item row align-items-md-center">
							<div class="col-3">
								<img src="${pageContext.request.contextPath }/resources/client/images/quote/quote.png" alt="">
							</div>
							
							<div class="col-9 text-left">
								<p class="quote-content">
									“Du lịch – ban đầu nó khiến bạn không thốt nên lời, và sau đó biến bạn trở thành một người kể chuyện.”
								</p>
								<span class="h-line d-inline-block mb-0"></span>
								<span class="quote-name">Ibn Battuta</span>
								
							</div>
						</div>
					</div>
					<div class="carousel-item active">
						<div class="item row align-items-md-center">
							<div class="col-3">
								<img src="${pageContext.request.contextPath }/resources/client/images/quote/quote.png" alt="">
							</div>
							
							<div class="col-9 text-left">
								<p class="quote-content">
									"Khi ai đó nhận ra rằng cuộc đời của mình là vô giá trị, họ hoặc là tự tử, hoặc là xách ba lô lên và đi"
								</p>
								<span class="h-line d-inline-block mb-0"></span>
								<span class="quote-name">Edward Dehlberg</span>
								
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="item row align-items-md-center">
							<div class="col-3">
								<img src="${pageContext.request.contextPath }/resources/client/images/quote/quote.png" alt="">
							</div>
							
							<div class="col-9 text-left">
								<p class="quote-content">
									“Một khi bị nhiễm niềm đam mê du lịch, chẳng có phương thuốc nào có thể hóa giải, và tôi biết rằng tôi sẽ hạnh phúc khi có căn bệnh này cho đến hết cuộc đời.”
								</p>
								<span class="h-line d-inline-block mb-0"></span>
								<span class="quote-name">Michael Palin</span>
								
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="item row align-items-md-center">
							<div class="col-3">
								<img src="${pageContext.request.contextPath }/resources/client/images/quote/quote.png" alt="">
							</div>
							
							<div class="col-9 text-left">
								<p class="quote-content">
									“Có một loại phép thuật đó là đi xa hơn nữa sau đó trở về và hoàn toàn thay đổi.”
								</p>
								<span class="h-line d-inline-block mb-0"></span>
								<span class="quote-name">Kate Douglas Wiggin</span>
								
							</div>
						</div>
					</div>
					
				</div>
				<a class="carousel-control-prev" href="#carousel-service-section" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carousel-service-section" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<!-- End Quote -->

	<!--Start FeatureTour -->
	<section class="Feature-tour">
		<div class="feature container-fluid text-center">
			<h2>CÁC TOUR NỔI BẬT</h2>
			<p>Featured tours</p>
			<hr class="h-line">
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div id="owl-two" class="owl-carousel">
						<!-- 1 -->
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/resources/client/images/FeaturedTour/buonmathuat.jpg" alt="">
								<div class="news-grid-box">
									<h1>05</h1>
									<p>HCM</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: Buôn Ma Thuột
									- Làng Cà Phê Trung</span>
								</div>
								<div class="text">
									<table>
									<tr>
										<td> <i class="fa fa-clock" aria-hidden="true"></i> 3 ngày 2 đêm </i> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-calendar" aria-hidden="true"></i> 05/07/2021 </li> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-user" aria-hidden="true"></i> Còn 10 chỗ </li> </td>
										<td> <p>1,999,000 đ</p> </td>
									</tr>
									</table>																	
								</div>
							</div>
							</a>
						</div>
					<!-- 2 -->
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/resources/client/images/FeaturedTour/sapaaa.jpg" alt="">
								<div class="news-grid-box">
									<h1>07</h1>
									<p>HN</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: Sapa - Bản Cát Cát
									- Chinh Phục Đỉnh</span>
								</div>
								<div class="text">
									<table>
									<tr>
										<td> <i class="fa fa-clock" aria-hidden="true"></i> 3 ngày 2 đêm </i> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-calendar" aria-hidden="true"></i> 12/07/2021 </li> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-user" aria-hidden="true"></i> Còn 2 chỗ </li> </td>
										<td> <p>1,999,000 đ</p> </td>
									</tr>
									</table>																	
								</div>
							</div>
							</a>
						</div>
					<!-- 3 -->
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/resources/client/images/FeaturedTour/phuquoc222.jpg" alt="">
								<div class="news-grid-box">
									<h1>17</h1>
									<p>HCM</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: Phú Quốc - Grand World
									- Checking Dòng </span>
								</div>
								<div class="text">
									<table>
									<tr>
										<td> <i class="fa fa-clock" aria-hidden="true"></i> 2 ngày 2 đêm </i> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-calendar" aria-hidden="true"></i> 07/07/2021 </li> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-user" aria-hidden="true"></i> Còn 5 chỗ </li> </td>
										<td> <p>2,500,000 đ</p> </td>
									</tr>
									</table>																	
								</div>
							</div>
							</a>
						</div>
					<!-- 4 -->
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/resources/client/images/FeaturedTour/buonmathuat.jpg" alt="">
								<div class="news-grid-box">
									<h1>07</h1>
									<p>HN</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: Buôn Ma Thuột
									- Làng Cà Phê Trung</span>
								</div>
								<div class="text">
									<table>
									<tr>
										<td> <i class="fa fa-clock" aria-hidden="true"></i> 3 ngày 2 đêm </i> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-calendar" aria-hidden="true"></i> 05/07/2021 </li> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-user" aria-hidden="true"></i> Còn 10 chỗ </li> </td>
										<td> <p>2,000,000 đ</p> </td>
									</tr>
									</table>																	
								</div>
							</div>
							</a>
						</div>
					<!-- 5 -->
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/resources/client/images/FeaturedTour/buonmathuat.jpg" alt="">
								<div class="news-grid-box">
									<h1>07</h1>
									<p>HN</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour: Buôn Ma Thuột
									- Làng Cà Phê Trung</span>
								</div>
								<div class="text">
									<table>
									<tr>
										<td> <i class="fa fa-clock" aria-hidden="true"></i> 3 ngày 2 đêm </i> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-calendar" aria-hidden="true"></i> 05/07/2021 </li> </td>
									</tr>
									<tr>
										<td> <i class="fa fa-user" aria-hidden="true"></i> Còn 10 chỗ </li> </td>
										<td> <p>1,999,000 đ</p> </td>
									</tr>
									</table>																	
								</div>
							</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center">
			<a href="">
				<button type="button">
					Xem tất cả
				</button>
			</a>
		</div>
	</section>
	<!--End FeatureTour-->

	<!-- Start Favorite destination -->
	<div class="destination container-fluid text-center">
		<h2>ĐIỂM ĐẾN ĐƯỢC YÊU THÍCH</h2>
		<p>Favorite destination</p>
		<hr class="h-line">

		<div class="grid-container grid-container-popular super-cards">

			<div class="grid-item grid-item-1">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/resources/client/images/FavoriteDestination/phuquoc.jpg');">					
					<a href="/da-lat-tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Phú Quốc</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			
			<div class="grid-item grid-item-2">
				<div class="col-xs-12 super-card card-auto-height" style="background-image: url('${pageContext.request.contextPath }/resources/client/images/FavoriteDestination/brtv.jpeg')">
				
					<a href="/khach-san-vung-tau" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Vũng Tàu</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-3">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/resources/client/images/FavoriteDestination/nhatrang.jpg');">
				
					<a href="/khach-san-nha-trang" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Nha Trang</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-4">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/resources/client/images/FavoriteDestination/quy-nhon.jpg');">
				
					<a href="/khach-san-quy-nhon" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Quy Nhơn</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-5">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/resources/client/images/FavoriteDestination/phanthiet.png');">
					
					<a href="/khach-san-phan-thiet" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Phan Thiết</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-6">
				<div class="col-xs-12 super-card card-auto-height" style="background-image: url('${pageContext.request.contextPath }/resources/client/images/FavoriteDestination/da_nang.jpg');">
				
					<a href="/khach-san-da-nang" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Đà Nẵng</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-7">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/resources/client/images/FavoriteDestination/dalat2.jpg');">
					
					<a href="/khach-san-da-lat" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Đà Lạt</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-8">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/resources/client/images/FavoriteDestination/sapa.jpg');">
				
					<a href="/khach-san-sapa" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Sapa</p>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- End Favorite desination -->


	<!-- Start AnimatedCouter -->
		<div class="counterUp">
			<div class="container-xl">
				<div class="row ml-0 mr-0">
					<div class="col-sm">
						<span class="emphasized-phrase counter">369</span> 
						<span class="counter-title">TOUR</span> 
					</div>
					<div class="col-sm">
						<span class="emphasized-phrase counter">3508</span> 
						<span class="counter-title">HAPPY CLIENT</span> 
					</div>
					<div class="col-sm">
						<span class="emphasized-phrase counter">21</span> 
						<span class="counter-title">AWARD WINNER</span> 
					</div>
					<div class="col-sm">
						<span class="emphasized-phrase counter">17</span> 
						<span class="counter-title">PARTEER</span> 
					</div>
					<div class="col-sm">
						<span class="emphasized-phrase counter">124</span> 
						<span class="counter-title">MEMBER</span> 
					</div>
				</div>
			</div>	
		</div>
	<!-- End AnimatedCouter -->

	<!-- Start Blog -->
	<div class="blog container-fluid text-center">
		<h2>KHÁM PHÁ</h2>
		<p>Lasted Blog</p>
		<hr class="h-line">	
	</div>
	<section class="blog">
		<div class="container-xl">
			<div class="row">
				<div class="col-md-4 col-lg-4">
					<a href="/dao-ly-son">
					<img src="${pageContext.request.contextPath }/resources/client/images/Blog/dao-ly-son-tu-da-nang.jpg" alt="">
					<h4>ĐẢO LÝ SƠN - ĐÀ NẴNG</h4>
					<p>Hi vọng với những chia sẽ kinh nghiệm du lịch đảo Lý 
						Sơn sẽ giúp du khách có một chuyến đi trọn vện hơn</p>
					<i class="fas fa-eye"></i> <span>1240</span>
					<i class="fas fa-comments"></i> <span>23</span>
					</a>
				</div>
				<div class="col-md-4 col-lg-4">
					<a href="/tay-nguyen">
					<img src="${pageContext.request.contextPath }/resources/client/images/Blog/tay-nguyen.jpg" alt="">
					<h4>THIÊN ĐƯỜNG NGHĨ DƯỠNG DAMBRI</h4>
					<p>Sở hữu cảnh vật thiên nhiên hùng vĩ với hệ sinh thái</p>
					<i class="fas fa-eye"></i> <span>356</span>
					<i class="fas fa-comments"></i></span>16</span>
					</a>
				</div>
				<div class="col-md-4 col-lg-4">
					<a href="/phan--thiet">
					<img src="${pageContext.request.contextPath }/resources/client/images/Blog/coco-beach-phan-thiet.jpg" alt="">
					<h4>DU LỊCH COCO BEACH PHAN THIẾT</h4>
					<p>Đến với Coco Beach trong hành trình du lịch Phan Thiết du khách...</p>
					<i class="fas fa-eye"></i> <span>756</span>
					<i class="fas fa-comments"></i> <span>36</span>
					</a>
				</div>
			</div>
		</div>
		<div class="text-center">
			<a href="">
				<button type="button">
					Xem tất cả
				</button>
			</a>
		</div>

	</section>
	<!-- End Blog -->

	<!-- Start Partner -->
	<div class="partner">
		<div class="container-xl">
			<div class="row align-items-center text-center">
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://www.asiamiles.com/">
						<img src="${pageContext.request.contextPath }/resources/client/images/Partner/asia.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://vinacapital.com/">
						<img src="${pageContext.request.contextPath }/resources/client/images/Partner/VinaCapital.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://vingroup.net/">
						<img src="${pageContext.request.contextPath }/resources/client/images/Partner/vingroup.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://www.grab.com/">
						<img src="${pageContext.request.contextPath }/resources/client/images/Partner/grab.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://cengroup.vn/">
						<img src="${pageContext.request.contextPath }/resources/client/images/Partner/cengroup.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://momo.vn/">
						<img src="${pageContext.request.contextPath }/resources/client/images/Partner/momo.png" alt="">
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- End Partner -->
	</main>
	<!-- End main -->
	<!-- Start Footer -->
	<footer class="footer" id="contact">
		<a href="HakunaMatata/contact.html">
			<div class="map text-center">
				<img src="${pageContext.request.contextPath}/resources/client/images/marker/icon_marker.png" alt="">
				<p class="emphasized-phrase open-map">Open map</p>
				<hr class="h-line mb-0">
			</div>
		</a>


		<div class="social">
			<div class="container-xl">
				<div class="row">
					<div class="col-md-4 col-lg-4 subscribe-section">
						<span class="emphasized-phrase footer-logo title">Hakuna Matata</span>
						<p class="desc">
							Liên hệ: 89 Trầm Văn Dư, Quận Tân Bình, Tp. HCM
						</p>
						<p>135 Hai Bà Trưng, Bến Nghé, Quận 1, TP. HCM</p>
						<br>
						<p>Phone: 0902345678 or 0903040506</p>
						<p>Fax: 277266255</p>
						<p>Email: hakunamatata@gmail.com</p>						
						<span class="emphasized-phrase follower-number">25k</span>
						<span class="title">followers</span>
						<hr>
						<p>
							<span class="follow-us">Flow Us:</span> 
							<a href="#">
								<i class="fab fa-facebook"></i>
							</a>
							<a href="#">
								<i class="fab fa-twitter"></i>
							</a> 
							<a href="#">
								<i class="fab fa-instagram"></i>
							</a>
							<a href="#">
								<i class="fab fa-pinterest"></i>
							</a>
							<a href="#">
								<i class="fab fa-google"></i>
							</a>
							<a href="#">
								<i class="fab fa-youtube"></i>
							</a>
						</p>
						<form>
							<div>
								<input type="text" name="email" class="form-control" required="required" placeholder="Your Email">
								<button type="submit" class="btn btn-primary emphasized-phrase">Subscribe</button>
							</div>
							
						</form>
					</div>
					<div class="col-md-4 col-lg-4 blog-section">
						<span class="title">Blogs</span>
						<div class="d-flex blog-row">
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/footer/songhuong.jpg" alt="">
							</a>
							<div class="blog-box">
								<p>
									<a href="#" class="title">
										SÔNG HƯƠNG ĐIỂM DU LỊCH LÝ 
										TƯỞNG TRONG CHUYẾN DU LỊCH HUẾ
									</a>
								</p>
								<span class="blog-date">July 7, 2021</span>
							</div>
						</div>

						<div class="d-flex blog-row">
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/footer/cucangchai.jpg" alt="">
							</a>
							<div class="blog-box">
								<p>
									<a href="#" class="title">
										TOP 4 ĐIỂM DU LỊCH TUYỆT HẢO Ở 
										MÙ CANG CHẢI KHÔNG NÊN BỎ QUA
									</a>
								</p>
								<span class="blog-date">July 3, 2021</span>
							</div>
						</div>

						<div class="d-flex blog-row">
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/footer/deodatrang.jpg" alt="">
							</a>
							<div class="blog-box">
								<p>
									<a href="#" class="title">
										THỜI ĐIỂM ĐẸP NHẤT ĐỂ KHÁM PHÁ
										ĐÈO ĐÁ TRẮNG Ở HÒA BÌNH
									</a>
								</p>
								<span class="blog-date">July 3, 2021</span>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-lg-4">
						<span class="title">CHỨNG NHẬN</span>
						<div class="container-xl">
							<div class="icons">
								<div>
									<img id="bct-icon" src="${pageContext.request.contextPath }/resources/client/images/footer/Bo-Cong-Thuong.png" alt="">
									<br>
									<img id="dm-icon" src="${pageContext.request.contextPath }/resources/client/images/footer/dmca_logo.png" alt="">
								</div>		
							</div>	
						</div>
						<br>
						<span class="title">Chấp nhận thanh toán</span>
						<div class="container-xl">
							<div class="icons">
								<div>
									<img id="momo-icon" src="${pageContext.request.contextPath }/resources/client/images/footer/momo.png" alt="">
									<img id="visa-icon"src="${pageContext.request.contextPath }/resources/client/images/footer/Visa-icon.png" alt="">
								</div>		
							</div>	
						</div>
						<br>
						<span class="title">HOT LINE</span>
						<div class="container-xl">
							<div class="icons">
								<div>
									<h3>19001000</h3>
								</div>		
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="copy-right text-center">
			<div class="container-xl">
				<hr>
				<p class="title-cr">Copyright © 2021 <a href="#">HakunaMatata Team</a></p>
				<a href="javascript:void()" class="back-to-top">
					<!-- <i class="fas fa-angle-up"></i> -->
				</a>
			</div>
		</div>
	</footer>
	<!-- End footer -->
	<script src="${pageContext.request.contextPath}/resources/client/js/script.js"></script>
</body>
</html>