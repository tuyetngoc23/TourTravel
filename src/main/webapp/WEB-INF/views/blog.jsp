<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>HakunaMatata</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath }/resources/client/vendor/jquery/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/client/vendor/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/vendor/fontawesome-free-5.15.1-web/css/all.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/css/style.css">
</head>
<style>
	/* all */
	main{
		font-family: "Source Sans Pro",sans-serif;
		font-weight: 400;
		line-height: 1.625;
		font-size: 1rem;
	}
	a:hover{
		text-decoration: none;
	}
	/* section 1 */
	.mb-30px{
		margin-bottom: 30px;
	}
	.hero-banner{
		position: relative;
		background: url(${pageContext.request.contextPath }/resources/client/images/buonmathuat.jpg) left center no-repeat ;
		background-size: cover;
		height: 400px;
		z-index: 1;
	}
	.hero-banner__content {
		position: absolute;
		top: 50%;
		left: 50%;
		width: 100%;
		transform: translate(-50%,-50%);
		text-align: center;
		color: #fff;
	}
	.hero-banner__content h3{
		font-size: 50px;
	}
	.hero-banner::after {
		content: "";
		display: block;
		position: absolute;
		width: 100%;
		height: 100%;
		background: rgba(1,3,15,.2);
		z-index: -1;
		opacity: 0.5px;
	}
	
	/* section 2 */
	.section-margin {
		margin: 50px 0;
	}
	.mt-4, .my-4 {
		margin-top: 1.5rem!important;
	}
	.row {
		display: flex;
		flex-wrap: wrap;
		margin-right: -15px;
		margin-left: -15px;
	}
	.single-recent-blog-post {
		margin-bottom: 60px;
	}
	.single-recent-blog-post .thumb {
		position: relative;
	}
	.img-fluid {
		max-width: 100%;
		height: auto;

		vertical-align: middle;
    	border-style: none;
	}
	.single-recent-blog-post .thumb-info {
		padding-left: 20px;

		position: absolute;
		bottom: 0;
		left: 0;
		background: #fff;
		width: 100%;
		max-width: 415px;
		padding-left: 5px;
	}
	ul.thumb-info{
		list-style-type: none;
		margin: 0;
	}
	.single-recent-blog-post .thumb-info li {
		margin-right: 22px;

		display: inline-block;
		font-size: 15px;
		color: #777;
	}
	.single-recent-blog-post .thumb-info li a {
		padding: 15px 0;
		font-size: 15px;
		color: #777;
		display: inline-block;
	}
	.single-recent-blog-post .thumb-info li i{
		font-size: 13px;
		margin-right: 10px;
	}
	.single-recent-blog-post .details {
		padding-top: 30px;
	}
	
	.single-recent-blog-post .details h3 {
		font-size: 27px;
		font-weight: 700;
		font-family: "Lora",serif;
		color: #3a414e;
		line-height: 1.333;
		margin-bottom: .5rem;
		margin-top: 0;
	}
	.single-recent-blog-post .details p {
		color: #777;
		margin-top: 0;
		margin-bottom: 1rem;
	}

	.single-recent-blog-post .details .button {
		margin-top: 8px;
		display: inline-block;
		border: 1px solid #222;
		text-transform: uppercase;
		font-size: 13px;
		font-weight: 500;
		padding: 10px 24px;
		background-color: #222;
		color: #ff9907;
		transition: all .4s ease;
	}
	.single-recent-blog-post .details .button:hover{
		background-color: #ff9907;
		color: #222;
		border-color: #ff9907;
	}
	/* siderbar */
	.widget-wrap {
		margin-top: 80px;
	}
	.widget-wrap .single-sidebar-widget {
		/* margin-top: 30px; */

		/* padding: 48px 30px; */
		background: #f9f9ff;
		margin-bottom: 30px;
	}
	.widget-wrap .single-sidebar-widget__title {
		/* font-size: 20px; */
		font-weight: 700;
		position: relative;
		z-index: 1;
		margin-bottom: 22px;
	}
	.widget-wrap .popular-post-widget .popular-post-list {
		margin-top: 30px;
	}
	.widget-wrap .popular-post-widget .single-post-list {
		margin-bottom: 5px;
	}
	.widget-wrap .popular-post-widget .single-post-list .thumb {
		position: relative;
	}
	.widget-wrap .popular-post-widget .single-post-list .thumb-info {
		position: absolute;
		bottom: 0;
		left: 0;
		width: 100%;
		background: #fff;
		max-width: 160px;
		padding-left: 10px;
	}
	.widget-wrap .popular-post-widget .single-post-list .thumb-info li {
		display: inline-block;
		font-size: 14px;
	}
	.widget-wrap .popular-post-widget .single-post-list .thumb-info li:first-child ::after{
		content: "";
    	padding: 0 7px;
	}
	.widget-wrap .popular-post-widget .single-post-list .thumb-info li a {
		display: inline-block;
		padding: 5px 0;
		color: #999;
	}
	.widget-wrap .popular-post-widget .single-post-list .details {
		margin-top: 20px;
	}
	.widget-wrap .popular-post-widget .single-post-list .details h6 {
		font-size: 20px;
		font-weight: 700;
		line-height: 26px;
		margin-bottom: 10px;
		-webkit-transition: all .3s ease 0s;
		transition: all .3s ease 0s;

		font-family: "Lora",serif;
    	color: #3a414e;
	}
</style>

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
									<a class="nav-link" href="#">HOME</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">TOUR</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">ABOUT</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">BLOG</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">CONTACT</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">SIGN IN</a>
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
	<div style="clear: both;"></div>
	<main class="site-main">

		<section class="mb-30px">
			<div class="container">
				<div class="hero-banner">
					<div class="hero-banner__content">
						<h3>Tours & Travels</h3>
					</div>
				</div>
			</div>
		</section>
		
		<section class="blog-post-area section-margin mt-4">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="single-recent-blog-post">
							<div class="thumb">
								<img class="img-fluid" src="${pageContext.request.contextPath }/resources/client/images/nhatrang.jpg" alt="">
								<ul class="thumb-info">
									<li><a href="#"><i class="fas fa-user"></i>Admin</a></li>
									<li><a href="#"><i class="fas fa-calendar-alt"></i>January 12,2019</a></li>
									<li><a href="#"><i class="fas fa-comments"></i>2 Comments</a></li>
								</ul>
							</div>
							<div class="details mt-20">
								<a href="#">
									<h3>Woman claims husband wants to name baby girl
										after his ex-lover sparking.</h3>
								</a>
								<p>Over yielding doesn't so moved green saw meat hath fish he him from given yielding
									lesser cattle were fruitful lights. Given let have, lesser their made him above
									gathered dominion sixth. Creeping deep said can't called second. Air created seed
									heaven sixth created living</p>
								<a class="button" href="#">Read More <i class="fas fa-arrow-right"></i></a>
							</div>
						</div>
						<div class="single-recent-blog-post">
							<div class="thumb">
								<img class="img-fluid" src="${pageContext.request.contextPath }/resources/client/images/phanthiet.png" alt="">
								<ul class="thumb-info">
									<li><a href="#"><i class="fas fa-user"></i>Admin</a></li>
									<li><a href="#"><i class="fas fa-calendar-alt"></i>January 12,2019</a></li>
									<li><a href="#"><i class="fas fa-comments"></i>2 Comments</a></li>
								</ul>
							</div>
							<div class="details mt-20">
								<a href="#">
									<h3>Tourist deaths in Costa Rica jeopardize safe dest
										ination reputation all time. </h3>
								</a>
								<p>Over yielding doesn't so moved green saw meat hath fish he him from given yielding
									lesser cattle were fruitful lights. Given let have, lesser their made him above
									gathered dominion sixth. Creeping deep said can't called second. Air created seed
									heaven sixth created living</p>
								<a class="button" href="#">Read More <i class="fas fa-arrow-right"></i></a>
							</div>
						</div>
						<div class="single-recent-blog-post">
							<div class="thumb">
								<img class="img-fluid" src="${pageContext.request.contextPath }/resources/client/images/sapaaa.jpg" alt="">
								<ul class="thumb-info">
									<li><a href="#"><i class="fas fa-user"></i>Admin</a></li>
									<li><a href="#"><i class="fas fa-calendar-alt"></i>January 12,2019</a></li>
									<li><a href="#"><i class="fas fa-comments"></i>2 Comments</a></li>
								</ul>
							</div>
							<div class="details mt-20">
								<a href="#">
									<h3>Tourist deaths in Costa Rica jeopardize safe dest
										ination reputation all time. </h3>
								</a>
								<p>Over yielding doesn't so moved green saw meat hath fish he him from given yielding
									lesser cattle were fruitful lights. Given let have, lesser their made him above
									gathered dominion sixth. Creeping deep said can't called second. Air created seed
									heaven sixth created living</p>
								<a class="button" href="#">Read More <i class="fas fa-arrow-right"></i></a>
							</div>
						</div>
						<!-- <div class="row">
							<div class="col-lg-12">
								<nav class="blog-pagination justify-content-center d-flex">
									<ul class="pagination">
										<li class="page-item">
											<a href="#" class="page-link" aria-label="Previous">
												<span aria-hidden="true">
													<i class="ti-angle-left"></i>
												</span>
											</a>
										</li>
										<li class="page-item active"><a href="#" class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item">
											<a href="#" class="page-link" aria-label="Next">
												<span aria-hidden="true">
													<i class="ti-angle-right"></i>
												</span>
											</a>
										</li>
									</ul>
								</nav>
							</div>
						</div> -->
					</div>

					<div class="col-lg-4 sidebar-widgets">
						<div class="widget-wrap">
							<div class="single-sidebar-widget popular-post-widget">
								<h4 class="single-sidebar-widget__title">Popular Post</h4>
								<div class="popular-post-list">
									<div class="single-post-list">
										<div class="thumb">
											<img class="card-img rounded-0"
												src="${pageContext.request.contextPath }/resources/client/images/quy-nhon.jpg" alt="">
											<ul class="thumb-info">
												<li><a href="#">Adam Colinge</a></li>
												<li><a href="#">Dec 15</a></li>
											</ul>
										</div>
										<div class="details mt-20">
											<a href="#">
												<h6>Accused of assaulting flight attendant miktake alaways</h6>
											</a>
										</div>
									</div>
									<div class="single-post-list">
										<div class="thumb">
											<img class="card-img rounded-0"
												src="${pageContext.request.contextPath }/resources/client/images/quy-nhon.jpg" alt="">
											<ul class="thumb-info">
												<li><a href="#">Adam Colinge</a></li>
												<li><a href="#">Dec 15</a></li>
											</ul>
										</div>
										<div class="details mt-20">
											<a href="#">
												<h6>Tennessee outback steakhouse the
													worker diagnosed</h6>
											</a>
										</div>
									</div>
									<div class="single-post-list">
										<div class="thumb">
											<img class="card-img rounded-0"
												src="${pageContext.request.contextPath }/resources/client/images/sapa (1).jpg" alt="">
											<ul class="thumb-info">
												<li><a href="#">Adam Colinge</a></li>
												<li><a href="#">Dec 15</a></li>
											</ul>
										</div>
										<div class="details mt-20">
											<a href="#">
												<h6>Tennessee outback steakhouse the
													worker diagnosed</h6>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>

	</main>
	<div style="clear: both;"></div>
	<!-- Start Footer -->
	<footer id="contact">
		<div class="map text-center">
			<img src="${pageContext.request.contextPath }/resources/client/images/icon/location.png" alt="">
			<p class="emphasized-phrase open-map">Open map</p>
			<hr class="h-line mb-0">
		</div>

		<div class="social">
			<div class="container-xl">
				<div class="row">
					<div class="col-md-4 col-lg-4 subscribe-section">
						<span class="emphasized-phrase footer-logo">Hakuna Matata</span>
						<p class="desc">
							LiÃªn há»: 89 Tráº§m VÄn DÆ°, Quáº­n TÃ¢n BÃ¬nh, Tp. HCM
						</p>
						<p>135 Hai BÃ  TrÆ°ng, Báº¿n NghÃ©, Quáº­n 1, TP. HCM</p>
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
										SÃNG HÆ¯Æ NG ÄIá»M DU Lá»CH LÃ 
										TÆ¯á»NG TRONG CHUYáº¾N DU Lá»CH HUáº¾
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
										TOP 4 ÄIá»M DU Lá»CH TUYá»T Háº¢O á» 
										MÃ CANG CHáº¢I KHÃNG NÃN Bá» QUA
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
										THá»I ÄIá»M Äáº¸P NHáº¤T Äá» KHÃM PHÃ
										ÄÃO ÄÃ TRáº®NG á» HÃA BÃNH
									</a>
								</p>
								<span class="blog-date">July 3, 2021</span>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-lg-4">
						<span class="title">CHá»¨NG NHáº¬N</span>
						<div class="container-xl">
							<div class="row">
								<div>
									<img id="bct-icon" src="${pageContext.request.contextPath }/resources/client/images/footer/Bo-Cong-Thuong.png" alt="">
									<br>
									<img id="dm-icon" src="${pageContext.request.contextPath }/resources/client/images/footer/dmca_logo.png" alt="">
								</div>		
							</div>	
						</div>
						<br>
						<span class="title">Cháº¥p nháº­n thanh toÃ¡n</span>
						<div class="container-xl">
							<div class="row">
								<div>
									<img id="momo-icon" src="${pageContext.request.contextPath }/resources/client/images/footer/momo.png" alt="">
									<img id="visa-icon"src="${pageContext.request.contextPath }/resources/client/images/footer/Visa-icon.png" alt="">
								</div>		
							</div>	
						</div>
						<br>
						<span class="title">HOT LINE</span>
						<div class="container-xl">
							<div class="row">
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
				<p class="title">Coyright Â© 2021 <a href="#">HakunaMatata Team</a></p>
				<a href="javascript:void()" class="back-to-top">
					<!-- <i class="fas fa-angle-up"></i> -->
				</a>
			</div>
		</div>
	</footer>
	<!-- End footer -->
</body>