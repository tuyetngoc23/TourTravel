<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>   
 
<jsp:include page="header.jsp" />

<style>
    main {
        font-family: "Roboto", sans-serif;
        font-weight: normal;
        font-style: normal;
        font-size: 16px;
    }

    .col-12,
    .col-lg-10,
    .col-lg-11,
    .col-lg-12,
    .col-lg-2,
    .col-lg-3,
    .col-lg-4,
    .col-lg-6,
    .col-lg-7,
    .col-lg-8,
    .col-md-10,
    .col-md-3,
    .col-md-4,
    .col-md-6,
    .col-md-7,
    .col-md-8,
    .col-md-9,
    .col-sm-10,
    .col-sm-12,
    .col-sm-4,
    .col-sm-6,
    .col-sm-7,
    .col-sm-8,
    .col-xl-10,
    .col-xl-11,
    .col-xl-12,
    .col-xl-2,
    .col-xl-3,
    .col-xl-4,
    .col-xl-5,
    .col-xl-6,
    .col-xl-7,
    .col-xl-8 {
        position: relative;
        width: 100%;
        min-height: 1px;
        padding-right: 15px;
        padding-left: 15px;
    }

    /* .container {
        max-width: 720px;
        width: 100%;
        padding-right: 10px;
        padding-left: 10px;
        margin-right: auto;
        margin-left: auto;
    } */

    .justify-content-center {
        justify-content: center !important;
    }

    .row {
		margin-top: 50px;
        display: flex;
        flex-wrap: wrap;
        margin-right: -15px;
        margin-left: -15px;
    }

    .section-padding {
        padding-top: 100px;
        padding-bottom: 90px;
    }

    .mb-45 {
        margin-bottom: 45px;
    }

    .text-center {
        text-align: center !important;
    }


    /* slider */
    .slider-area {
        margin-top: -1px;
        z-index: 2;
    }

    .slider-bg2.slider-bg3 {
        background-image: url(${pageContext.request.contextPath }/resources/client/images/Cau-vang-Da-Nang-720x479.jpg);
    }

    .slider-bg2 {
        background-image: url(${pageContext.request.contextPath }/resources/client/images/Cau-vang-Da-Nang-720x479.jpg);
        background-repeat: no-repeat;
        background-position: top center;
        background-size: cover;
    }

    .slider-height3 {
        margin-top: 50px;
    }

    .align-items-center {
        -ms-flex-align: center !important;
        align-items: center !important;
    }

    .d-flex {
        display: -ms-flexbox !important;
        display: flex !important;
    }

    .col-md-7 {
        flex: 0 0 58.333333%;
        max-width: 58.333333%;
    }

    .slider-area .hero__caption.hero__caption3 {
        padding-top: 0;
        padding: 50px 20px 50px 20px;
        position: relative;
        z-index: 2;
    }

    .slider-area .hero__caption {
        overflow: hidden;
    }



    .slider-area .hero__caption.hero__caption3::before {
        position: absolute;
        content: "";
        background: rgba(0, 94, 13, 0.35);
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        width: 100%;
        height: 100%;
        z-index: -1;
        border-radius: 10px;
    }

    .slider-area .hero__caption.hero__caption3 h2 {
        color: #fff;
        font-size: 60px;
        display: block;
        font-weight: 700;
        line-height: 1;


    }

    .slider-area .hero__caption.hero__caption3 .cat-cap p {
        color: #ffff;
        font-size: 16px;
        font-weight: 500;
        padding: 0;
        margin-bottom: 20px;
        line-height: 1.6;
    }

    .slider-area .hero__caption span {
        font-family: "Josefin Sans", sans-serif;
        display: block;
    }

    .slider-area .hero__caption.hero__caption3 .cat-cap .price {
        font-size: 34px;
        font-weight: 600;
        color: #fff;
    }

    .slider-area .hero__caption.hero__caption3 .cat-cap p a {
        color: #fff;
        background: rgba(255, 255, 255, .3);
        font-size: 14px;
        display: inline-block;
        font-weight: 500;
        line-height: 1;
        margin: 0;
        padding: 9px 15px;
        border-radius: 19px;
        margin-right: 13px;
    }

    /* schedule */


    .col-md-10 {
        flex: 0 0 83.333333%;
        max-width: 83.333333%;
    }

    .shedule-area .shedule-time h2 {
        font-size: 43px;
        display: block;
        font-weight: 700;
        line-height: 1.4;
        margin-bottom: 22px;

        font-family: "Josefin Sans", sans-serif;
        color: #005e24;
        margin-top: 0;
        text-transform: normal;
    }

    .shedule-area .shedule-time p {
        color: #677f8b;
        font-size: 18px;
        font-weight: 400;
        line-height: 1.5;
    }

    .mt-40 {
        margin-top: 40px;
    }

    .about-btn {
        padding: 30px 40px;
        background: #eeeadbf6;
        font-family: "Roboto", sans-serif;
        text-transform: inherit !important;
        color: rgb(22, 21, 21) !important;
        display: inline-block;
        font-size: 16px !important;
        font-weight: 500 !important;
        border-radius: 5px;
        line-height: 0;
        transition: color .4s linear;
        position: relative;
        z-index: 1;
        border: 0;
        overflow: hidden;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
    }

    .about-btn:hover {
        background: linear-gradient(to bottom, #10d810 0%, #13dd24 100%);
        color: #fff !important;
        text-decoration: none !important;
    }

    /* service-section */
    .section-tittle h2 {
        font-size: 43px;
        display: block;
        font-weight: 700;
        line-height: 1.4;
        margin-bottom: 22px;
    }

    .slick-slider {
        position: relative;
        display: block;
        box-sizing: border-box;
        -webkit-user-select: none;
        user-select: none;
        -webkit-touch-callout: none;
        touch-action: pan-y;
        -webkit-tap-highlight-color: transparent;
    }

    .slick-prev {
        left: -15px;

        outline: medium none;

        text-transform: none;

        overflow: visible;

        margin: 0;
        font-family: inherit;
        font-size: inherit;
        line-height: inherit;

        display: block;
    }

    .slick-arrow {
        position: absolute;
        border: 0;
        padding: 0;
        z-index: 2;
        cursor: pointer;
        top: 50%;
        transform: translateY(-50%);
        left: auto;
        background: none;
    }

    button.slick-next {
        right: -15px;
    }

    .slick-list {
        position: relative;

        display: block;
        overflow: hidden;

        margin: 0;
        padding: 0;
    }

    .slick-list:focus {
        outline: none;
    }

    .slick-list.dragging {
        cursor: pointer;
        cursor: hand;
    }

    .slick-track {
        position: relative;
        top: 0;
        left: 0;

        display: block;
        margin-left: auto;
        margin-right: auto;
    }

    .slick-track:before,
    .slick-track:after {
        display: table;

        content: '';
    }

    .slick-track:after {
        clear: both;
    }

    .slick-loading .slick-track {
        visibility: hidden;

    }

    .slick-slide {
        display: none;
        float: left;

        height: 100%;
        min-height: 1px;
    }

    [dir='rtl'] .slick-slide {
        float: right;
    }

    .slick-slide img {
        display: block;
    }

    .slick-slide.slick-loading img {
        display: none;
    }

    .slick-slide.dragging img {
        pointer-events: none;
    }

    .slick-initialized .slick-slide {
        display: block;
    }

    .slick-loading .slick-slide {
        visibility: hidden;
    }

    .slick-vertical .slick-slide {
        display: block;

        height: auto;

        border: 1px solid transparent;
    }

    .slick-arrow.slick-hidden {
        display: none;
    }
    .single-cat {
        -webkit-transition: all .4s ease-out 0s;
        transition: all .4s ease-out 0s;
        z-index: 1;
    }
    .mb-30 {
        margin-bottom: 30px;
    }
    .single-cat .cat-img {
        overflow: hidden;
        border-radius: 5px 5px 0 0;
    }
    .single-cat .cat-img img {
        width: 100%;
        transform: scale(1);
        transition: all .4s ease-out 0s;
        vertical-align: middle;
        border-style: none;
    }
    .single-cat .cat-cap{
        border-radius: 0 0 5px 5px;
        padding: 30px 20px 30px 23px;
        box-shadow: 0 10px 15px rgb(0 9 94 / 6%);
        transition: all .3s ease-out 0s;
    }
    .cat-cap p{
        color: #00095e;
        font-size: 14px;
        font-weight: 500;
        margin: 0;
        padding: 0;
        line-height: 1.4;
    }
    .cat-cap p a{
        color: #7ea0ff;
        background-color: rgba(126,160,255,.05);
        display: inline-block;
        font-weight: 500;
        line-height: 1;
        margin: 0;
        border-radius: 19px;
        margin-right: 13px;

        outline: medium none;

        transition: all .3s ease-out 0s;
        text-decoration: none;
    }
    .justify-content-between{
        justify-content: space-between !important;
    }
    .d-flex{
        display: flex !important;
    }
    .price{
        font-size: 22px;
        font-weight: 700;
        color: #7ea0ff;
        line-height: 1;
    }
	#t01{
		border-radius: 15px;
		width: 100%;   
		height: 300px; 
  		background-color: #f1f1c1;
	}
	#t01 th {
		padding: 10px;
		width: 200px;
  		text-align: left;
	}
	#t02{
		width: 100%;   
	}
	#t02 *{
		border: 1px solid black;
		border-collapse: collapse;
		text-align: center;
	}
	.row1 {
		margin-top: 50px;
        display: flex;
        flex-wrap: wrap;
        margin-right: -15px;
        margin-left: -15px;
    }
	h2{
		color: red;
	}
</style>

	<div class="social">
		<div class="container-xl">
			<div class="row1">
				<div class="col-md-6 col-lg-6">
					<div class="hero__caption hero__caption2  hero__caption3 text-center">
						<h5 style="color:red">XÁC NHẬN THÔNG TIN</h5>
					</div>
				</div>
				<div class="col-md-6 col-lg-6">
					<div class="hero__caption hero__caption2  hero__caption3 text-center">
						<h5>THANH TOÁN</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="slider-area">
		<div class="single-slider slider-height3 slider-bg2 slider-bg3 d-flex align-items-center ">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-7 col-lg-7 col-md-7 col-sm-7">
						<div class="hero__caption hero__caption2  hero__caption3 text-center">
							<h4>CẢM ƠN QUÝ KHÁCH ĐÃ SỬ DỤNG DỊCH VỤ CỦA CHÚNG TÔI</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="social">
		<div class="container-xl">
			<div class="row1">
				<div class="col-md-6 col-lg-6">
						<h2>XÁC NHẬN THÔNG TIN BOOK</h2>
					

					<table id="t01">
						<tr>
							<th>Tên tour:</th>
							<td>${tour.name }</td>
						</tr>
						<tr>
							<th>Ngày đi:</th>
							<td><fmt:formatDate value="${tour.start_day }" pattern="dd-MM-yyyy" /></td>
						</tr>
						<tr>
							<th>Ngày về:</th>
							<td><fmt:formatDate value="${tour.end_day }" pattern="dd-MM-yyyy" /></td>
						</tr>
						<tr>
							<th>Nơi khởi hành:</th>
							<td>${tour.department.address }</td>
						</tr>
						<tr>
							<th>Số người lớn:</th>
							<td>${aldult_amount}</td>
						</tr>
						<tr>
							<th>Số trẻ em:</th>
							<td>${child_amount}</td>
						</tr>
						<tr>
							<th>Số trẻ nhỏ:</th>
							<td>${child_nho_amount}</td>
						</tr>
						<tr>
							<th>Tổng số tiền:</th>
							<td>${tour.price }</td>
						</tr>
					</table>
				</div>
				<div class="col-md-6 col-lg-6">
					<h2>THÔNG TIN LIÊN LẠC</h2>			
				<table id="t01">
					<tr>
						<th>Tên:</th>
						<td>${user.cusname }</td>
					</tr>
					<tr>
						<th>Ngày tháng năm sinh:</th>
						<td><fmt:formatDate value="${user.birthday }" pattern="dd-MM-yyyy" /></td>
					</tr>
					<tr>
						<th>Số điện thoại:</th>
						<td>${user.phone }</td>
					</tr>
					<tr>
						<th>địa chỉ:</th>
						<td>${user.address }</td>
					</tr>
					<tr>
						<th>email:</th>
						<td>${user.email }</td>
					</tr>
				</table>
			</div>
			</div>
		</div>
	</div>
	<div class="social">
		<div class="container-xl">
			<div class="row">
				<div class="col-md-12 col-lg-12">
				
				
						<h2 style="text-align: center;">DANH SÁCH KHÁCH HÀNG THAM GIA</h2>			
					<table id="t02">
						<tr>
							<th>Tên</th>
							<th>email</th>
							<th>phone</th>
							<th>Trị giá</th>
						</tr>
						<c:forEach var="ticket" items="${ticket}">
						<tr>
							<td>${ticket.name }</td>
							<td>${ticket.email }</td>
							<td>${ticket.phone }</td>
							<td>${ticket.unitprice }</td>
						</tr>
						</c:forEach> 
					</table>
					
				</div>
			</div>
		</div>
	</div>
					
	
	<form class="pt-3" method= "post" action="update">
						<input type="hidden" value="${aldult_amount}" name="aldult_amount">
						<input type="hidden" value="${child_amount}" name="child_amount">
						<input type="hidden" value="${child_nho_amount}" name="child_nho_amount">
						<input type="hidden" value="${book_id}" name="book_id">
						<input type="hidden" value="${tour_id}" name="tour_id">								
					  	<input type="hidden" value="${tour_payment_type}" name="tour_payment_type">
	<div class="social">
		<div class="container-xl">
			<div class="row1">
				<div class="col-md-6 col-lg-6">
					<div class="text-center">
						<a href="${pageContext.request.contextPath }/booking/?id=${tour_id}">
							<button type="button">
								Trở lại
							</button>
						</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-6">
					<div class="text-center">
						<button type="submit">
								Thanh toán
							</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>

<jsp:include page="footer.jsp" />

	
