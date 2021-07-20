<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<%@ page import="java.util.List" %>


<jsp:include page="header.jsp" />

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
	
<jsp:include page="footer.jsp" />