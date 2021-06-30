<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>New Tour</title>
    <!-- plugins:css -->
    <link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon"
	href="${pageContext.request.contextPath }/resources/assets/images/favicon.ico" />
</head>
<body>
	<div class="container-scroller">
			<%@include file="../header.jsp"%>
		<div class="container-fluid page-body-wrapper">
			<%@include file="../navbar.jsp"%>
			<!-- Doadborad -->
			   <!-- partial -->
       <div class="main-panel">
        <div class="content-wrapper">
        	  <div class="row" id="proBanner">
        
          </div>
          
           <div class="page-header">
            <h3 class="page-title">
              <span class="page-title-icon bg-gradient-primary text-white mr-2">
                <i class="mdi mdi-home"></i>
              </span> New Tour
            </h3>
            <nav aria-label="breadcrumb">
              <ul class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">
                  <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                </li>
              </ul>
            </nav>
          </div>
        
        	<!-- Form -->
     		  <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title text-info text-center">New Tour</h4>
                  
                    <form class="forms-sample" action="#" method="post">
                      <div class="form-group">
                        <label for="exampleInputName1">Name Tour :</label>
                        <input type="text" class="form-control" name="name" placeholder="Name Tour">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3">Price Tour :</label>
                        <input type="number" class="form-control" name="price" placeholder="Price Tour">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword4">Min Amount Tour :</label>
                        <input type="number" class="form-control" name="min_amount" placeholder="Min Amount Tour">
                      </div>
                       <div class="form-group">
                        <label for="exampleInputPassword4">Max Amount Tour :</label>
                        <input type="number" class="form-control" name="max_amount" placeholder="Max Amount Tour">
                      </div>
                        <div class="form-group">
                        <label>File upload</label>
                        <input type="file" name="img[]" class="file-upload-default" onchange="previewFiles()">
                        <div class="input-group col-xs-12">
                          <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image" >
                          <span class="input-group-append">
                            <button class="file-upload-browse btn btn-gradient-primary" type="button">Upload</button>
                          </span>
                        </div>
                      </div>
                      <!-- load hinh img -->
                      <img src="" height="200" alt="Image preview..." id="preview-img" style="display: none">
                      <!-- load hinh list IMG -->
                      <div id="preview"></div>
                      <div class="form-group">
                      		 <label for="birthday">Start Day:</label>
  							<input type="date" class="form-control" id="birthday" name="start_day">
                      </div>
                       <div class="form-group">
                      		 <label for="birthday">Start End:</label>
  							<input type="date" class="form-control" id="birthday" name="start_end">
                      </div>
                      <div class="form-group">
                        <label for="exampleSelectGender">Location Go Tour :</label>
                        <select class="form-control" name="location_go">
                          <option>Xe May</option>
                          <option>May Bay</option>
                        </select>
                      </div>
                        <div class="form-group">
                        <label for="exampleSelectGender">Cat Tour :</label>
                        <select class="form-control" name="carttour_id">
                          <option>cartour1</option>
                          <option>cartour12</option>
                        </select>
                      </div>
                   
                      <div class="form-group">
                        <label for="exampleInputCity1">Content Tour</label>
                        <textarea  class="form-control" name="content" placeholder="Content" rows="4"></textarea>
                      </div>
                      <div class="form-group">
                        <label for="exampleTextarea1">Note Tour</label>
                        <textarea class="form-control" name="note" placeholder="Note Tour" rows="4"></textarea>
                      </div>
                      <button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>
                      <button class="btn btn-light">Cancel</button>
                    </form>
                  </div>
                </div>
              </div>
     	<!-- End Form -->
          </div>
     	
     
     	
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
     <%@include file="../footer.jsp"%>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
		</div>
	</div>
      <!-- page-body-wrapper ends -->

    <!-- container-scroller -->
   <!-- plugins:js -->
   
  
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <script
		src="${pageContext.request.contextPath }/resources/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
      <script src="${pageContext.request.contextPath }/resources/assets/js/file-upload.js"></script>
       <script src="${pageContext.request.contextPath }/resources/assets/js/previewimage.js"></script>
    <script
		src="${pageContext.request.contextPath }/resources/assets/vendors/chart.js/Chart.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script
		src="${pageContext.request.contextPath }/resources/assets/js/off-canvas.js"></script>
    <script
		src="${pageContext.request.contextPath }/resources/assets/js/hoverable-collapse.js"></script>
    <script
		src="${pageContext.request.contextPath }/resources/assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script
		src="${pageContext.request.contextPath }/resources/assets/js/dashboard.js"></script>
    <script
		src="${pageContext.request.contextPath }/resources/assets/js/todolist.js"></script>
		  <!-- Custom js for this page -->
  
    <!-- End custom js for this page -->
</body>
</html>
