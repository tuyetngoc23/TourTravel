<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>MoGo</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/vendor/bootstrap-4.5.3-dist/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath }/resources/client/vendor/jquery/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/client/vendor/bootstrap-4.5.3-dist/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/vendor/fontawesome-free-5.15.1-web/css/all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/client/css/style.css">
    <style>
     header .home{
    	background-image: url(${pageContext.request.contextPath }/resources/client/images/Home/Bg_home.png);
    } 
        div {
            display: block;
        }
		/* search */
		.searchbar{
			background: #f1f1f1;
			color: #212121;
			margin-bottom: 30px;
			font: 16px Arial;
		}
		.titlesearch{
			text-transform: uppercase;
			font-weight: 700;
			border-bottom: 1px dashed #ccc;
			padding: 15px;
			font-size: 16px;
			color: #0bc549;
			line-height: 25px;
    		text-shadow: 1px 1px 2px #ffba8a;
		}
		.frsearch{
			padding: 15px;
		}
		.mg-bot15{
			margin-bottom: 15px;
		}
		#search{
			background-color: #1de45f;
			color: #f1f1f1;
		}
		/* list tour */
        #list{
            font-family: Muli,sans-serif;
            font-size: 14px;
        }
        .wrap {
            position: relative;
            padding-left: 70px;
        }
        #day {
            padding: 5px;
            position: absolute;
            left: 0px;
            top: 0px;
            float: left;
            width: 60px;
            height: 65px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            background: #07d811;
            color: #fff;
            font-size: 14px;
            line-height: 20px;
        }
        #ngay{
            font-size: 30px;
            line-height: 40px;
            font-weight: 700;
            border-bottom: solid 1px #fff;
            width: 100%;
            text-align: center;
            margin-bottom: 3px;
        }
		#box {
            margin-bottom: 20px;
            padding: 15px;
            border: solid 1px rgba(0,0,0,.15);
            min-height: 251px;
            min-block-size: 260px;
        }
		#imag {
			width: 330px;
			float: left;
			margin-right: 20px;
			position: relative;
			overflow: hidden
        }
        .size {
            width: 330px;
            height: 227px;
			transition: 0.5s;
        }
		
        #caption {
            overflow: hidden;
            padding-left: 10px;
            /* float:right; */
        }
        #tourname{
            font-size: 18px;
            line-height: 26px;
            display: block;
            font-weight: 700px;
            margin-bottom: 5px;
            overflow: hidden;
            height: 52px;
        }
        a#tourname{
            color: #000;
            text-transform: uppercase;
        }
        a#tourname:hover{
            text-decoration: none;
            color: rgb(8, 219, 8);
        }
        #datetime{
            font-family: Arial;
            padding: 5px 0px;
            margin: 10px 0px 0px;
            height: 44px;
        }
        #datetime span{
            border: 1px solid #555;
            color: #fff;
            float: left;
            display: block;
            padding: 5px 10px;
            background-color: #555;
        }
        #datetime span:first-child{
            border: 1px solid #ddd;
            background-color: #e7e7e7;
            color: #555;
        }
        #boxprice div span{
            display: block;
            font-size: 12px;
            line-height: 20px;
            margin: 5px;
            padding: 5px 0px;
        }
        #price {
            font-family: Arial;
            color: #0de065;
            font-size: 22px;
            line-height: 24px;
            font-weight: 700;
            height: 24px;
            float:right;
			margin-bottom: 5px;
        }
		#book:hover{
			background-color: #75c48d;
		}
    </style>
</head>
<body>
	<header>
		<!-- HOME -->
		<section id="home">
			<div id="header">
				<nav class="navbar navbar-expand-md navbar-light bg-none">
					<a class="navbar-brand" href="#">MoGo</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav ml-auto">
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
				<div class="home container-fluid text-center">
					<h2>Hakuna Matata</h2>
					<h1>Enjoy your life</h1>
					<hr>		
				</div>
				<div class="container-fluid">
					<div class="row">
						<!-- column 1 -->
						<div class="col-md-3">
						</div>
						<div class="col-md-3 padding-right">
						</div>
						<div class="col-md-3 padding-right">
						</div>
						<div class="col-md-3 padding-right">
						</div>
					</div>
				</div>

			</div>
		</section>
	</header>
	<main>
		<!-- Khuyen Mai Äáº·c Biá»t -->
		<section id="sale">
			<div class="about container-fluid text-center">
				
				<h2>KHUYáº¾N MÃI Äáº¶C BIá»T</h2>
				<p>Sale promotion</p>
				<hr>	
			</div>
		</section>
        <section id="tour">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 mg-bot30">
                        <form action="${pageContext.request.contextPath }/tour" method="post">
							<div class="searchbar">
								<div class="titlesearch">TÌM KIẾM</div>
                            	<div class="frsearch" style="clear: both;">
									<div class="location mg-bot15" >
										<label for="departure">Nơi Khởi Hành</label>
										<select id="departure" class="form-control" name="department">
											<option value="0">--Chọn nơi khởi hành--</option>
										<c:forEach items="${listDepartment}" var="d">
											<option value="${d.id}">${d.address}</option>
										</c:forEach>
										</select>
									</div>
									<div class="cat mg-bot15">
										<label for="cattour">Loại Tour</label>
										<select id="cattour" class="form-control" name="cattour">
											<option value="0">--Chọn Loại Tour--</option>
										<c:forEach items="${ listCatTours}" var="cat">
											<option value="${cat.id }">${cat.name }</option>
										</c:forEach>
										</select>
									</div>
									<div class="province mg-bot15">
										<label for="desnitation">Nơi Đến</label>
										<select id="desnitation" class="form-control" name="desnitation">
											<option value="0">--Chọn nơi đến--</option>
										<c:forEach items="${listProvince }" var="des">
											<option value="${des.id }">${des.name }</option>
										</c:forEach>
										</select>
									</div>
									<div class="arival mg-bot15">
										<label for="ngaykhoihanh">Ngày Khởi Hành</label>
										<input id="ngaykhoihanh" class="form-control" type="date" name="ngaykhoihanh"/>
									</div>
									<div class="price mg-bot15">
										<label for="gia">Gía</label>
										<select id="gia" class="form-control" name="price">
											<option value="0">--Chọn Giá--</option>
											<option value="1">0-1trVND</option>
											<option value="2">1tr-2tr</option>
											<option value="3">2tr-3tr</option>
											<option value="4">3tr-4tr</option>
											<option value="5">4tr trở lên</option>
										</select>
									</div>
									<div class="hotel mg-bot15">
										<label for="ks">Khách Sạn</label>
										<select id="ks" class="form-control" name="hotel">
											<option value="0">--Chọn Khách Sạn--</option>
										<c:forEach items="${listHotels }" var="hotel">
											<option value="${hotel.id }">${hotel.name} - ${hotel.type }</option>
										</c:forEach>
										</select>
									</div>
									<div class="vehicle mg-bot15">
										<label for="phuongtien">Phương Tiện</label>
										<select id="phuongtien" class="form-control" name="vehicle">
											<option value="0">--Chọn Phương Tiện--</option>
										<c:forEach  items="${listVehicles }" var="vehicle">
											<option value="${vehicle.id }">${vehicle.name}</option>
										</c:forEach>
										</select>
									</div>
									<div class="btsearch mg-bot15">
										<div>
											<input id="search" type="submit" class="form-control" value="Tìm Kiếm"/>
										</div>
									</div>
                            	</div> 
							</div>
                        </form>
                        
                    </div>
                    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                    
                    <%-- <c:forEach items="${listTourByVehicle} " var="tour">
                    <c:if test="${tour != null}">
                    	<div id="list">
							<form action="#">
								<div class="wrap">
									<div id="day">
										<div id="ngay"><fmt:formatDate type="date" value="${tour.start_day}" pattern="dd" var="startday"/>${startday }</div>
										<div id="monyear"><fmt:formatDate type="date" value="${tour.start_day}" pattern="MM/yyyy" /></div>
									</div>
									<div id="box">
										<div id="imag">
											<a href="#"><img class="size" src="${pageContext.request.contextPath }/resources/client/images/${tour.image}" /></a>
										</div>
										<div id="caption">
											<div>
												<a id="tourname" href="#"><strong>${tour.name }</strong></a>
												<div>
													<p id="datetime">
														<span>Thời Gian</span>
														<span><fmt:formatDate type="date" value="${tour.end_day}" pattern="dd" var="endday" /> ${ endday - startday } ngày ${ endday - startday - 1} đêm</span>
													</p>
												</div> 
											</div>
											<div id="boxprice">
												<div>
													<span><strong>Số chỗ còn: </strong>
													${tour.max_amount - tour.min_amount + tour.min_amount} chỗ</span>
												</div>
												<p>
													<span id="price">${tour.price } VND</span>
												</p>
												<input id="book" type="submit" value="Đặt Tour" class="form-control"/>
											</div>
										</div>
									</div>
									
								</div>
							</form>
                        </div>
                        </c:if>
                    </c:forEach> --%>
                        <div id="list">
							<form action="#">
								<div class="wrap">
									<div id="day">
										<div id="ngay">01</div>
										<div id="monyear">7/2021</div>
									</div>
									<div id="box">
										<div id="imag">
											<a href="#"><img class="size" src="${pageContext.request.contextPath }/resources/client/images/dalat2.jpg" /></a>
										</div>
										<div id="caption">
											<div>
												<a id="tourname" href="#"><strong>Du lịch - Tour Du Lịch - Grand World - Checkin dòng sông Venice - Vinwonders</strong></a>
												<div>
													<p id="datetime">
														<span>Thời Gian</span>
														<span>3 ngày 2 đêm</span>
													</p>
												</div> 
											</div>
											<div id="boxprice">
												<div>
													<span><strong>Số chỗ còn: </strong>
													10 chỗ</span>
												</div>
												<p>
													<span id="price">4.000.000VND</span>
												</p>
												<input id="book" type="submit" value="Đặt Tour" class="form-control"/>
											</div>
										</div>
									</div>
									
								</div>
							</form>
                        </div>
						
                    </div>
                </div>
            </div>
        </section>

	</main>
	<footer id="contact">
		<div class="map text-center">
			<img src="${pageContext.request.contextPath }/resources/client/images/icon/location.png" alt="">
			<p class="emphasized-phrase open-map">Open map</p>
			<hr class="h-line mb-0">
		</div>

		<div class="social">
			<div class="container-xl">
				<div class="row">
					<div class="col-md-12 col-lg-5 subscribe-section">
						<span class="emphasized-phrase footer-logo">Hakuna Matata</span>
						<p class="desc">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
						</p>
						<span class="emphasized-phrase follower-number">15k</span>
						<span class="title">followers</span>
						<hr>
						<p>
							<span class="follow-us">Flow Us:</span> 
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/icon/facebook.png" alt="">
							</a>
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/icon/twitter.png" alt="">
							</a>
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/icon/instagram.png" alt="">
							</a>
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/icon/pinterest.png" alt="">
							</a>
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/icon/google-plus.png" alt="">
							</a>
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/icon/youtube.png" alt="">
							</a>
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/icon/dribbble.png" alt="">
							</a>
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/icon/tumblr.png" alt="">
							</a>
						</p>
						<form>
							<div>
								<input type="text" name="email" class="form-control" required="required" placeholder="Your Email">
								<button type="submit" class="btn btn-primary emphasized-phrase">Subscribe</button>
							</div>
							
						</form>
					</div>
					<div class="col-md-6 col-lg-4 blog-section">
						<span class="title">Blogs</span>
						<div class="d-flex blog-row">
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/contact/blog1.jpg" alt="">
							</a>
							<div class="blog-box">
								<p>
									<a href="#" class="title">
										Lorem ipsum dolor sit amet, 
										consectetur adipiscing
									</a>
								</p>
								<span class="blog-date">Jan 9, 2016</span>
							</div>
						</div>

						<div class="d-flex blog-row">
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/contact/blog2.jpg" alt="">
							</a>
							<div class="blog-box">
								<p>
									<a href="#" class="title">
										Consectetur adipiscing elit, 
										sed do eiusmod tempor
									</a>
								</p>
								<span class="blog-date">Jan 9, 2016</span>
							</div>
						</div>

						<div class="d-flex blog-row">
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/client/images/contact/blog3.jpg" alt="">
							</a>
							<div class="blog-box">
								<p>
									<a href="#" class="title">
										sed do eiusmod tempor 
										incididunt ut labore
									</a>
								</p>
								<span class="blog-date">Jan 9, 2016</span>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3 instagram-section">
						<span class="title">Instagram</span>
						<div class="container-xl">
							
							<div class="row">
								<div class="col-4">
									<a href="#">
										<img src="${pageContext.request.contextPath }/resources/client/images/contact/instagram1.jpg" alt="">
									</a>
								</div>
								<div class="col-4">
									<a href="#">
										<img src="${pageContext.request.contextPath }/resources/client/images/contact/instagram2.jpg" alt="">
									</a>
								</div>
								<div class="col-4">
									<a href="#">
										<img src="${pageContext.request.contextPath }/resources/client/images/contact/instagram3.jpg" alt="">
									</a>	
								</div>
								<div class="col-4">
									<a href="#">
										<img src="${pageContext.request.contextPath }/resources/client/images/contact/instagram4.jpg" alt="">
									</a>
								</div>
								<div class="col-4">
									<a href="#">
										<img src="${pageContext.request.contextPath }/resources/client/images/contact/instagram5.jpg" alt="">
									</a>
								</div>
								<div class="col-4">
									<a href="#">
										<img src="${pageContext.request.contextPath }/resources/client/images/contact/instagram6.jpg" alt="">
									</a>
								</div>
								<div class="col-4">
									<a href="#">
										<img src="${pageContext.request.contextPath }/resources/client/images/contact/instagram7.jpg" alt="">
									</a>
								</div>
								<div class="col-4">
									<a href="#">
										<img src="${pageContext.request.contextPath }/resources/client/images/contact/instagram8.jpg" alt="">
									</a>
								</div>
								<div class="col-4">
									<a href="#">
										<img src="${pageContext.request.contextPath }/resources/client/images/contact/instagram9.jpg" alt="">
									</a>
								</div>
							</div>
							
						</div>
						<a href="#" class="view-more-photo">View more photos</a>
					</div>
				</div>
			</div>
		</div>

		<div class="copy-right text-center">
			<div class="container-xl">
				<hr>
				<p class="title">Coyright Â© 2021 <a href="#">HakunaMatata Team</a></p>
				<a href="javascript:void()" class="back-to-top">
					<i class="fas fa-angle-up"></i>
				</a>
			</div>
		</div>
	</footer>
</body>
</html>