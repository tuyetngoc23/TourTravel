<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>

<jsp:include page="header_support.jsp" />

<style>
	  header .home{
    	background-image: url(${pageContext.request.contextPath }/images/Home/Bg_home.png);
    }  
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

    .justify-content-center {
        justify-content: center !important;
    }

    .row {
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
        background-image: url(${pageContext.request.contextPath }/images/Cau-vang-Da-Nang-720x479.jpg);
    }

    .slider-bg2 {
        background-image: url(${pageContext.request.contextPath }/images/Cau-vang-Da-Nang-720x479.jpg);
        background-repeat: no-repeat;
        background-position: top center;
        background-size: cover;
    }

    .slider-height3 {
        height: 540px;
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

    /* Slider */
    /* .slick-loading .slick-list {
        background: #fff url('./ajax-loader.gif') center center no-repeat;
    } */

    /* Icons */
    @font-face {
        font-family: 'slick';
        font-weight: normal;
        font-style: normal;

        /* src: url('./fonts/slick.eot');
        src: url('./fonts/slick.eot?#iefix') format('embedded-opentype'), url('./fonts/slick.woff') format('woff'), url('./fonts/slick.ttf') format('truetype'), url('./fonts/slick.svg#slick') format('svg');
     */}

    /* Arrows */
    .slick-prev,
    .slick-next {
        font-size: 0;
        line-height: 0;

        position: absolute;
        top: 50%;

        display: block;

        width: 20px;
        height: 20px;
        padding: 0;
        -webkit-transform: translate(0, -50%);
        -ms-transform: translate(0, -50%);
        transform: translate(0, -50%);

        cursor: pointer;

        color: transparent;
        border: none;
        outline: none;
        background: transparent;
    }

    .slick-prev:hover,
    .slick-prev:focus,
    .slick-next:hover,
    .slick-next:focus {
        color: transparent;
        outline: none;
        background: transparent;
    }

    .slick-prev:hover:before,
    .slick-prev:focus:before,
    .slick-next:hover:before,
    .slick-next:focus:before {
        opacity: 1;
    }

    .slick-prev.slick-disabled:before,
    .slick-next.slick-disabled:before {
        opacity: .25;
    }

    .slick-prev:before,
    .slick-next:before {
        font-family: 'slick';
        font-size: 20px;
        line-height: 1;
        opacity: .75;
        color: white;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }

    .slick-prev {
        left: -25px;
    }

    [dir='rtl'] .slick-prev {
        right: -25px;
        left: auto;
    }

    .slick-prev:before {
        content: 'â';
    }

    [dir='rtl'] .slick-prev:before {
        content: 'â';
    }

    .slick-next {
        right: -25px;
    }

    [dir='rtl'] .slick-next {
        right: auto;
        left: -25px;
    }

    .slick-next:before {
        content: 'â';
    }

    [dir='rtl'] .slick-next:before {
        content: 'â';
    }

    /*  */

    .single-cat {
        width: 250px;
        min-height: 284px;
        margin: 5px;
    }

    .mb-30 {
        margin-bottom: 30px;
    }

    .single-cat .cat-img img {
        width: 100%;
        height:200px;

        overflow: hidden;
        border-radius: 5px 5px 0 0;
    }

    .single-cat .cat-cap {
        border-radius: 0 0 5px 5px;
        padding: 30px 20px 30px 23px;
        box-shadow: 0 10px 15px rgb(0 9 94 / 6%);
        transition: all .3s ease-out 0s;
    }

    .cat-cap p {
        color: #00095e;
        font-size: 14px;
        font-weight: 500;
        margin: 0;
        padding: 0;
        line-height: 1.4;
    }

    .cat-cap p a {
        color: #7ea0ff;
        background-color: rgba(126, 160, 255, .05);
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

    .justify-content-between {
        justify-content: space-between !important;
    }

    .d-flex {
        display: flex !important;
    }

    .price {
        font-size: 22px;
        font-weight: 700;
        color: #7ea0ff;
        line-height: 1;
    }
</style>
    <div style="clear: both;"></div>
    <main>
        <div class="slider-area">
            <div class="single-slider slider-height3 slider-bg2 slider-bg3 d-flex align-items-center ">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-7 col-lg-7 col-md-7 col-sm-7">
                            <div class="hero__caption hero__caption2  hero__caption3 text-center">
                                <h2>${getTour.name }</h2>
                                <div class="cat-cap">
                                    <p><a href="#"><fmt:formatDate type="date" value="${getTour.start_day}" pattern="dd/MM"/> 
                                    - <fmt:formatDate type="date" value="${getTour.end_day}" pattern="dd/MM"/></a>
                                    ${getTour.department.address}</p>
                                    <span class="price">
                                    <fmt:parseNumber type="number" integerOnly="true" value="${getTour.price }" var="Nprice"/>
                                    <fmt:formatNumber value="${Nprice}" type="number" maxFractionDigits="3"/>
                                   VND</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		
        <div class="shedule-area section-padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10 com-sm-11">
	                    <div class="shedule-time mb-45 ">
	                    	<h2>Thông Tin</h2>
	                    	 <p>${getTour.content }</p>
	                    </div>
	                     <div class="shedule-time mb-45 text-center">
	                    	<h2>Lịch Trình</h2>
	                    </div>
	                    <% int i=1; %>
	                    <c:forEach items="${listPlace}" var="listPlace">
                        <div class="shedule-time mb-45 ">
                            <h2>Day:<%=i++%> ${listPlace.name }</h2>
                            <div class="row">
                                <div class="col-4">
                                    <img src="${pageContext.request.contextPath }/uploads/image-place/${listPlace.image}" alt="imgplace" style="width: 100%; height: 220px;"/>
                                </div>
                                <div class="col-8">
                                    <p>${listPlace.description}</p>
                                </div>
                            </div>
                        </div>
                         </c:forEach>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <div class="details-btn text-center mt-40">
                            <a href="${pageContext.request.contextPath }/booking?id=${getTour.id}" class="about-btn">Đặt Ngay</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="services-section section-padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-5">

                        <div class="section-tittle text-center mb-45 ">
                            <!-- <span>Check our best promotional tour</span> -->
                            <h2>Gợi Ý Tour</h2>
                        </div>
                    </div>
                </div>
                <div class="slider autoplay">
					<c:forEach items="${list }" var="tour">
                    <div class="single-cat mb-30">
                        <div class="cat-img">
                            <img src="${pageContext.request.contextPath }/uploads/image-tour/${tour.image}" alt="">
                        </div>
                        <div class="cat-cap">
                            <div class="pricing d-flex justify-content-between">
                                <h3><a href="events_details.html"> ${tour.name }</a></h3>
                                <span class="price">
								<fmt:parseNumber type="number" integerOnly="true" value="${tour.price }" var="Nprice"/>
                                  <fmt:formatNumber value="${Nprice}" type="number" maxFractionDigits="3"/>
                              	VND</span>
                            </div>
                            <p><a href="#"><fmt:formatDate type="date" value="${getTour.start_day}" pattern="dd/MM"/> 
                                    - <fmt:formatDate type="date" value="${getTour.end_day}" pattern="dd/MM"/></a></p>
                        </div>
                    </div>
					</c:forEach >
                    <div class="single-cat mb-30">
                        <div class="cat-img">
                            <img src="${pageContext.request.contextPath }/images/phuquoc.jpg" alt="">
                        </div>
                        <div class="cat-cap">
                            <div class="pricing d-flex justify-content-between">
                                <h3> <a href="events_details.html"> Finlande </a></h3>
                                <span class="price">$1200</span>
                            </div>
                            <p><a href="#">12 Jan - 18 Jan</a>5 Days</p>
                        </div>
                    </div>

                    <div class="single-cat mb-30">
                        <div class="cat-img">
                            <img src="${pageContext.request.contextPath }/images/nhatrang.jpg" alt="">
                        </div>
                        <div class="cat-cap">
                            <div class="pricing d-flex justify-content-between">
                                <h3> <a href="events_details.html"> Spitzberg </a></h3>
                                <span class="price">$1200</span>
                            </div>
                            <p><a href="#">12 Jan - 18 Jan</a>5 Days</p>
                        </div>
                    </div>

                    <div class="single-cat mb-30">
                        <div class="cat-img">
                            <img src="${pageContext.request.contextPath }/images/phanthiet.png" alt="">
                        </div>
                        <div class="cat-cap">
                            <div class="pricing d-flex justify-content-between">
                                <h3> <a href="events_details.html"> Mega Turkey </a></h3>
                                <span class="price">$1200</span>
                            </div>
                            <p><a href="#">12 Jan - 18 Jan</a>5 Days</p>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </main>
    <div style="clear: both;"></div>
<jsp:include page="footer.jsp" />
<script>
    $(document).ready(function () {
        $('.autoplay').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
        });
    });
</script>