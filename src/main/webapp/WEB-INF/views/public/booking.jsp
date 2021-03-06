<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Booking</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/booking.css" />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
      integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <div class="container my-5">
     
      <div class="row step">
        <div class="col-5 step__warnning active">
          <div class="row">
            <div class="col-2 step__warnning__circle">
              <span class="">1</span>
            </div>
            <div class="col-5 step__warnning__title">
              <span class="">Nhập Thông tin</span>
            </div>
            <div class="col-5 step__warnning__line">
              <div class="step__warnning__line__center"></div>
            </div>
          </div>
        </div>
        <div class="col-5 step__warnning">
          <div class="row">
            <div class="col-2 step__warnning__circle">
              <span class="">2</span>
            </div>
            <div class="col-5 step__warnning__title">
              <span class="">Hakuna Xác Nhận</span>
            </div>
            <div class="col-5 step__warnning__line">
              <div class="step__warnning__line__center"></div>
            </div>
          </div>
        </div>
        <div class="col-2 step__warnning">
          <div class="row">
            <div class="col-4 step__warnning__circle">
              <span class="">3</span>
            </div>
            <div class="col-8 step__warnning__title">
              <span class="">Thanh Toán</span>
            </div>
          </div>
        </div>
      </div>
      <div class="tour__infomation mt-5">
        <h1 class="tour__infomation__title text-center">THÔNG TIN TOUR</h1>
        <div class="tour__infomation__content">
          <div class="row">
            <div class="tour__infomation__content__img col-3">
              <img
                src="${pageContext.request.contextPath }/${initParam.urloadTour}/${tour.image}"
                alt="${tour.name}"
                style="width: 100%"
              />
            </div>
            <div class="tour__infomation__content__detail col-9">
              <div class="tour__infomation__content__detail__address">
                <p>Thừa Thiên Huế</p>
              </div>
              <div class="row tour__infomation__content__detail__content">
                <div class="col-6">
                  <i class="fa fa-barcode"></i>
                  <span>${tour.id}</span>
                </div>
                <div class="col-6">
                  <i class="fa fa-address-book"></i>

                  <span>${tour.max_amount}</span>
                </div>
              </div>
              <div class="row tour__infomation__content__detail__content">
                <div class="col-6">
                  <i class="fa fa-calendar"></i>
                  <span>
                  <fmt:formatDate value="${tour.start_day}" pattern="yyyy-MM-dd" />
               
              	
              
                </div>
                <div class="col-6">
                  <i class="fa fa-calendar"></i>
                  <a href="#" style="text-decoration: none"
                    ><span class="text-danger" style="font-weight: 500"
                      >Ngày Khác</span
                    ></a
                  >
                </div>
              </div>
              <div class="row tour__infomation__content__detail__content">
                <div class="col-6">
                  <i class="fa fa-hourglass"></i>
                  <span>    
                   <fmt:formatDate value="${tour.end_day}" pattern="yyyy-MM-dd" />           
       				
               
      			   </span>
                </div>
                <div class="col-6">
                  <i class="fa fa-credit-card"></i>
                  <span>Giá : </span>
                  <span class="text-danger" style="font-weight: 500"
                    >${tour.price}</span
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="tour__infomation__notify">
          <p class="tour__infomation__notify__content">
            Khách nữ từ 55 tuổi trở lên, khách nam từ 60 tuổi trở lên đi tour
            một mình và khách mang thai trên 4 tháng (16 tuần) vui lòng đăng ký
            tour trực tiếp tại văn phòng của Vietravel. Không áp dụng đăng ký
            tour online đối với khách từ 70 tuổi trở lên .
          </p>
        </div>
      </div>
      <div class="tour__price">
        <h1 class="tour__infomation__title text-center">GIÁ TOUR CƠ BẢN</h1>
        <div>
          <table class="col-12">
            <thead>
              <tr>
                <th>Người lớn(Từ 12 tuổi trở lên)</th>
                <th>Trẻ em (Từ 5 tuổi đến dưới 12 tuổi)</th>
                <th>Trẻ nhỏ (Từ 2 tuổi đến dưới 5 tuổi)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><span id="price_nguoi_lon">${tour.price * 1}</span>đ</td>
                <td ><span id="price_tre_em">${(tour.price * 3) / 5}</span>đ</td>
                <td ><span id="price_tre_nho">${(tour.price * 2) / 5}</span>đ</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
      <div class="tour__contact mt-5">
        <h1 class="tour__infomation__title text-center">THÔNG TIN LIÊN LẠC</h1>
        <div>
          <form action="${pageContext.request.contextPath }/booking" method="post" class="row">
            <input type="hidden" value="${tour.id}" name="tour_id">
            <input type="hidden" value="${user.id}" name="user_id">
            <input type="hidden" name="date" value="10/10/2021">
            <div class="col-6">
              <div>
                <label for="">Họ tên(<span>*</span>)</label>
              </div>
              <input
                class="tour__contact__input col-12"
                type="text"
                placeholder="Nhập họ tên"
                value="${user.cusname}"
              />
            </div>
            <div class="col-6">
              <div>
                <label for="">Email(<span>*</span>)</label>
              </div>
              <input
                class="tour__contact__input col-12"
                type="text"
                placeholder="Nhập email"
                 value="${user.email}"
              />
            </div>

            <div class="col-6">
              <div>
                <label for="">Di Động(<span>*</span>)</label>
              </div>
              <input
                class="tour__contact__input col-12"
                type="text"
                value="${user.phone}"
                placeholder="Nhập họ tên"
              />
            </div>
            <div class="col-6">
             <!-- 
             
              <div>
                <label for="">Email(<span>*</span>)</label>
              </div>
              <input
                class="tour__contact__input col-12"
                type="text"
                placeholder="Nhập email"
              />
              -->
            </div>
            <div class="col-6">
              <div>
                <label for="">Dịa chỉ(<span>*</span>)</label>
              </div>
              <input
                class="tour__contact__input col-12"
                type="text"
                placeholder="Nhập email"
                  value="${user.address}"
              />
            </div>
            <div class="col-6">
              <div class="row" id="tour_number_type">
                <div class="col-3">
                  <div>
                    <label for="">Người Lớn(<span>*</span>)</label>
                  </div>
                  <input
                    class="tour__contact__input col-12"
                    type="number"
                    name="child_amount"
                    value="1"
                    id="tour_nguoi_lon"
                  />
                </div>

                <div class="col-3">
                  <div>
                    <label for="">Trẻ Em(<span>*</span>)</label>
                  </div>
                  <input
                    class="tour__contact__input col-12"
                    type="number"
                    name="aldult_amount"
                    value="0"
                    id="tour_tre_em"
                  />
                </div>

                <div class="col-3">
                  <div>
                    <label for="">Trẻ Nhỏ(<span>*</span>)</label>
                  </div>
                  <input
                    class="tour__contact__input col-12"
                    type="number"
                    value="0"
                    name="child_nho_amount"
                    id="tour_tre_nho"
                  />
                </div>

                <div class="col-3">
                  <div>
                    <label for="">Số Lượng(<span>*</span>)</label>
                  </div>
                  <input
                    
                    class="
                      tour__contact__input tour__contact__input__user
                      col-12
                    "
                    name="soluong"
                    value="1"
                    type="text"
                    id="tour_so_luong"
                  />
                </div>
              </div>
            </div>
            <div class="col-12">
              <div>
                <label for="">Ghi Chú</label>
              </div>
              <textarea class="col-12" placeholder="Ghi chú !"></textarea>
            </div>
       

            <div class="col-12">
              <div class="col-12 d-flex justify-content-center">
                <div class="row tour__contact__notify">
                  <div class="col-6">
                    <p class="">
                      Người lớn sinh từ: <span>29/06/1951 đến 29/06/2009</span>
                    </p>
                  </div>
                  <div class="col-6">
                    <p class="">
                      Người lớn sinh từ: <span>29/06/1951 đến 29/06/2009</span>
                    </p>
                  </div>
                  <div class="col-6">
                    <p class="">
                      Người lớn sinh từ: <span>29/06/1951 đến 29/06/2009</span>
                    </p>
                  </div>
                </div>
              </div>
            </div>

            <div class="tour__list__user col-12 mt-5">
              <h1 class="tour__infomation__title text-center">
                THÔNG TIN KHÁCH HÀNG
              </h1>
              <div class="tour__list__user__item" id="list_infomation_user">
              
            
              </div>
            </div>
            <div class="tour__contact__payment col-12 mt-5">
              <h1 class="tour__infomation__title text-center ">
                VUI LÒNG CHỌN PHƯƠNG THỨC THANH TOÁN
              </h1>
              <div class="tour_payment">
                <div>
                  
                  <input checked="checked" type="radio" name="tour_payment_type" value="1">
                  <label for="">Thanh Toán MoMo</label>
                 
                </div>
                <div>
                  <input name="tour_payment_type" type="radio" value="2">
                  <label for="">Tiền Mặt</label>
                </div>
              
              </div>
            </div>
            <div class="col-12 d-flex justify-content-center mt-5">
              <input type="submit" value="Đặt tour" class="tour_submit btn btn-danger text-center">
            </div>
            
          </form>
        </div>
      </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${pageContext.request.contextPath }/js/booking.js"></script>
    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"
    ></script>
    
  </body>
</html>
    