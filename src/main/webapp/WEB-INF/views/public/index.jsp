<%@ page session="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.hakunamatata.springmvc.service.CommentService, com.hakunamatata.springmvc.entity.Comment,
	com.hakunamatata.springmvc.service.CommentService, com.hakunamatata.springmvc.entity.Blog,
	com.hakunamatata.springmvc.service.BlogService" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix= "fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="header_home.jsp" />

	<!-- Start Main -->
	<main>
	<!--Start SalePromotion -->
	<section class="sale" id="sale">
		<div class="about container-fluid text-center">
			<h2>Khuyến Mãi</h2>
			<p>Sale promotion</p>
			<hr class="h-line">
		</div>		
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div id="owl-one" class="owl-carousel">
						<!-- 1 -->
						<c:if test="${listTourByDiscount.size() > 0}">
						<c:forEach items="${listTourByDiscount }" var="tour">
						<div class="news-grid">
							<a href="#">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/images/${tour.image}" alt="">
								<div class="news-grid-box">
									<h1><fmt:formatDate type="date" value="${tour.start_day}" pattern="dd" var="startday"/>${startday }</h1>
									<p>${fn:substring(tour.department.address, 0, 7)}...</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour:${tour.name }</span>
								</div>
								<div class="text">
									<p class="sale-time"> <i class="fa fa-clock"></i> <fmt:formatDate type="date" value="${tour.end_day}" pattern="dd" var="endday" /> ${ endday - startday } ngày ${ endday - startday - 1} đêm</p>
									<p class="sale-schedule"> <i class="fa fa-calendar"></i> <fmt:formatDate type="date" value="${tour.start_day}" pattern="dd/MM/yyyy"/></p>
									<p class="sale-place"> <i class="fa fa-user"></i> Còn ${tour.max_amount - tour.min_amount + tour.min_amount} chỗ </p>
									<div class="sale-discount">
										<span class="sale-pre"><fmt:parseNumber type="number" integerOnly="true" value="${tour.price }" var="Nprice"/>
                                   					 <fmt:formatNumber value="${Nprice}" type="number" maxFractionDigits="3"/>
                                     				VNĐ</span>	
										<!-- <span class="sale-dis">5,000,000</span> -->
									</div>																	
								</div>
							</div>
							</a>
						</div>
						</c:forEach>
						</c:if>
						<c:if test="${listTourByDiscount.size() <= 0}">
							<div class="alert alert-danger" role="alert" >
	                       		Không Có Tour Nào Đang Khuyến Mãi
                   			</div>
						</c:if>
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
								<img src="${pageContext.request.contextPath }/images/quote/quote.png" alt="">
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
								<img src="${pageContext.request.contextPath }/images/quote/quote.png" alt="">
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
								<img src="${pageContext.request.contextPath }/images/quote/quote.png" alt="">
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
								<img src="${pageContext.request.contextPath }/images/quote/quote.png" alt="">
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
	<%-- <section class="Feature-tour">
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
						<c:forEach items="${list }" var="tour">
						<div class="news-grid">
							<a href="${pageContext.request.contextPath }/tourdetail?id=${tour.id}">
							<div class="news-grid-image"><img src="${pageContext.request.contextPath }/images/${tour.image}" alt="">
								<div class="news-grid-box">
									<h1><fmt:formatDate type="date" value="${tour.start_day}" pattern="dd" var="startday"/>${startday }</h1>
									<p>${fn:substring(tour.department.address, 0, 7)}...</p>
								</div>
							</div>
							<div class="news-grid-txt">
								<div class="title">
									<span>Tour:${tour.name }</span>
								</div>
								<div class="text">
									<p class="sale-time"> <i class="fa fa-clock"></i> <fmt:formatDate type="date" value="${tour.end_day}" pattern="dd" var="endday" /> ${ endday - startday } ngày ${ endday - startday - 1} đêm</p>
									<p class="sale-schedule"> <i class="fa fa-calendar"></i> <fmt:formatDate type="date" value="${tour.start_day}" pattern="dd/MM/yyyy"/></p>
									<p class="sale-place"> <i class="fa fa-user"></i> Còn ${tour.max_amount - tour.min_amount + tour.min_amount} chỗ </p>
									<div class="sale-discount">
										<span class="sale-pre"><fmt:parseNumber type="number" integerOnly="true" value="${tour.price }" var="Nprice"/>
                                   					 <fmt:formatNumber value="${Nprice}" type="number" maxFractionDigits="3"/>
                                     				VNĐ</span>	
									</div>																	
								</div>
							</div>
							</a>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center">
			<a href="${pageContext.request.contextPath }/tour">
				<button type="button">
					XEM TẤT CẢ
				</button>
			</a>
		</div>
	</section> --%>
	<!--End FeatureTour-->
	
	
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
						<c:forEach items="${list }" var="tour">
						<div class="news-grid">
							<a href="${pageContext.request.contextPath }/tourdetail?id=${tour.id}">
							<div class="news-grid-image"><img src="images/FeaturedTour/buonmathuat.jpg" alt="">
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
									</div>																	
								</div>
							</div>
							</a>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="text-center">
			<a href="">
				<button type="button">
					XEM TẤT CẢ
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
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/phuquoc.jpg');">					
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">PHÚ QUỐC</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			
			<div class="grid-item grid-item-2">
				<div class="col-xs-12 super-card card-auto-height" style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/brtv.jpeg')">
				
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Vũng Tàu</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-3">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/nhatrang.jpg');">
				
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Nha Trang</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-4">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/quy-nhon.jpg');">
				
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Quy Nhơn</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-5">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/phanthiet.png');">
					
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Phan Thiết</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-6">
				<div class="col-xs-12 super-card card-auto-height" style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/da_nang.jpg');">
				
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Ninh Bình</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-7">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/dalat2.jpg');">
					
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
						<div class="col-xs-12 card-bg">
							<div class="info">
								<p class="title">Phú Yên</p>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="grid-item grid-item-8">
				<div class="col-xs-12 super-card " style="background-image: url('${pageContext.request.contextPath }/images/FavoriteDestination/sapa.jpg');">
				
					<a href="${pageContext.request.contextPath }/tour" target="_blank">
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
	<div class="blog-title container-fluid text-center">
		<h2>KHÁM PHÁ</h2>
		<p>Lasted Blog</p>
		<hr class="h-line">	
	</div>
	<section class="blog">
		<div class="container-xl">
			<div class="row">
				<c:forEach items="${listBlog }" var="blog">
				<div class="col-md-4 col-lg-4">
					<a href="/hakunamatata/blogdetail?id=${blog.id }">
					<img src="${pageContext.request.contextPath }/images/${blog.image}" alt="">
					<h4>${fn:substring(blog.title, 0, 50)}...</h4>
					<p>${fn:substring(blog.content, 0, 90)}...</p>
					<i class="fas fa-heart"></i> <span>${blog.like_amount }</span>
					<i class="fas fa-comments"></i> <span>23</span>
					</a>
				</div>
				</c:forEach>
			</div>
		</div>
		<div class="text-center">
			<a href="${pageContext.request.contextPath }/blog">
				<button type="button">
					XEM TẤT CẢ
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
						<img src="${pageContext.request.contextPath }/images/Partner/asia.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://vinacapital.com/">
						<img src="${pageContext.request.contextPath }/images/Partner/VinaCapital.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://vingroup.net/">
						<img src="${pageContext.request.contextPath }/images/Partner/vingroup.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://www.grab.com/">
						<img src="${pageContext.request.contextPath }/images/Partner/grab.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://cengroup.vn/">
						<img src="${pageContext.request.contextPath }/images/Partner/cengroup.png" alt="">
					</a>
				</div>
				<div class="col-6 col-sm-4 col-lg-2">
					<a href="https://momo.vn/">
						<img src="${pageContext.request.contextPath }/images/Partner/momo.png" alt="">
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- End Partner -->
	</main>
	<!-- End main -->
	
<jsp:include page="footer.jsp" />