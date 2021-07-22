<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>

<jsp:include page="header_home.jsp" />
    <style>
     header .home{
    	background-image: url(${pageContext.request.contextPath }/images/Home/Bg_home.png);
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
		.slidecontainer {
        	width: 100%;
	    }
	
	    .slider {
	        -webkit-appearance: none;
	        width: 100%;
	        height: 25px;
	        background: #d3d3d3;
	        outline: none;
	        opacity: 0.7;
	        -webkit-transition: .2s;
	        transition: opacity .2s;
	    }
	
	    .slider:hover {
	        opacity: 1;
	    }
	
	    .slider::-webkit-slider-thumb {
	        -webkit-appearance: none;
	        appearance: none;
	        width: 25px;
	        height: 25px;
	        background: #04AA6D;
	        cursor: pointer;
	    }
	
	    .slider::-moz-range-thumb {
	        width: 25px;
	        height: 25px;
	        background: #04AA6D;
	        cursor: pointer;
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
            width: 340px;
            height: 240px;
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
        #boxprice p{
        	height:40px;
        }
        #price {
            font-family: Arial;
            color: #0de065;
            font-size: 22px;
            line-height: 24px;
            font-weight: 700;
            height: 24px;
            float:right;
        }
       
       	#book{
       		text-align:center;
       		text-decoration: none;
       	}
		#book:hover{
			background-color: #75c48d;
			color: white;
		}
		
		#tour {
			padding-top: 50px;
		}
		
    </style>

	<main>
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
										<div class="slidecontainer">
					                        <input type="range" min="1000000" max="10000000" value="1000000" class="slider" id="myRange" name ="timgiatu">
					                        <p>Giá từ: <span id="demo"></span></p>
					                        <input type="range" min="1000000" max="10000000" value="1000000" class="slider" id="myRange2" name ="timgiaden">
					                        <p>Giá đến: <span id="demo2"></span></p>
					                    </div>
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
                      <%-- <c:choose> --%>
                      <c:if test="${listTourTest != null}">
                    <c:forEach items="${listTourTest}" var="tour">
                    	<div id="list">
							<form >
								<div class="wrap">
									<div id="day">
										<div id="ngay"><fmt:formatDate type="date" value="${tour.start_day}" pattern="dd" var="startday"/>${startday }</div>
										<div id="monyear"><fmt:formatDate type="date" value="${tour.start_day}" pattern="MM/yyyy" var="monthyear"/>${monthyear}</div>
									</div>
									<div id="box">
										<div id="imag">
											<a href="${pageContext.request.contextPath }/tourdetail?id=${tour.id}"><img class="size" src="${pageContext.request.contextPath }/images/${tour.image}" /></a>
										</div>
										<div id="caption">
											<div>
												<a id="tourname" href="${pageContext.request.contextPath }/tourdetail?id=${tour.id}"><strong>${tour.name }</strong></a>
												<div>
													<p id="datetime">
														<span>Thời Gian</span>
														<span><fmt:formatDate type="date" value="${tour.end_day}" pattern="dd" var="endday" /> ${ endday - startday } ngày ${ endday - startday - 1} đêm</span>
														
													</p>
													<p id="datetime">
														<span>Hotel :${tour.hotel.type}</span>
														<span>Phương Tiện: ${tour.vehicle.name}</span>
													</p>
												</div> 
											</div>
											<div id="boxprice">
												<div>
													<span><strong>Số chỗ còn: </strong>
													${tour.max_amount - tour.min_amount + tour.min_amount} chỗ</span>
												</div>
												<p>
												
													<span id="price"><fmt:parseNumber type="number" integerOnly="true" value="${tour.price }" var="Nprice"/>
                                   					 <fmt:formatNumber value="${Nprice}" type="number" maxFractionDigits="3"/>
                                     				VND</span>

												</p>
												<p>
													
													<a href="${pageContext.request.contextPath }/tourdetail?id=${tour.id}" id="book" class="form-control">Đặt Tour</a>
												</p>

												
												
											</div>
										</div>
									</div>
									
								</div>
							</form>
                        </div>
                    </c:forEach>
                    </c:if>
                    <c:if  test="${listTourTest.size() <= 0}">
	                    <div class="alert alert-danger" role="alert" >
	                       		Không Tìm Thấy Tour Phù Hợp
                   		</div>
                    </c:if>
                    </div>
                </div>
            </div>
        </section>

	</main>
	<!-- Start Footer -->
<jsp:include page="footer.jsp" />