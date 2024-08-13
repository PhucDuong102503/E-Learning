<<<<<<< HEAD
<<<<<<< HEAD
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
>>>>>>> origin/create-course1
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
>>>>>>> origin/crud_quiz
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="utf-8">
    <title>Detail Teacher - ECOURSES</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

    <style>
        .teacher-img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <!-- Topbar Start -->
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/payment
    <div class="container-fluid d-none d-lg-block">
        <div class="row align-items-center py-4 px-xl-5">
            <div class="col-lg-3">
                <a href="" class="text-decoration-none">
                    <h1 class="m-0"><span class="text-primary">E</span>COURSES</h1>
                </a>
            </div>
            <div class="col-lg-3 text-right">
                <div class="d-inline-flex align-items-center">
                    <i class="fa fa-2x fa-map-marker-alt text-primary mr-3"></i>
                    <div class="text-left">
                        <h6 class="font-weight-semi-bold mb-1">Our Office</h6>
                        <small>123 Street, New York, USA</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 text-right">
                <div class="d-inline-flex align-items-center">
                    <i class="fa fa-2x fa-envelope text-primary mr-3"></i>
                    <div class="text-left">
                        <h6 class="font-weight-semi-bold mb-1">Email Us</h6>
                        <small>info@example.com</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 text-right">
                <div class="d-inline-flex align-items-center">
                    <i class="fa fa-2x fa-phone text-primary mr-3"></i>
                    <div class="text-left">
                        <h6 class="font-weight-semi-bold mb-1">Call Us</h6>
                        <small>+012 345 6789</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <div class="container-fluid">
        <div class="row border-top px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="d-flex align-items-center justify-content-between bg-secondary w-100 text-decoration-none" data-toggle="collapse" href="#navbar-vertical" style="height: 67px; padding: 0 30px;">
                    <h5 class="text-primary m-0"><i class="fa fa-book-open mr-2"></i>Subjects</h5>
                    <i class="fa fa-angle-down text-primary"></i>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 9;">
                    <div class="navbar-nav w-100">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link" data-toggle="dropdown">Web Design <i class="fa fa-angle-down float-right mt-1"></i></a>
                            <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                <a href="" class="dropdown-item">HTML</a>
                                <a href="" class="dropdown-item">CSS</a>
                                <a href="" class="dropdown-item">jQuery</a>
                            </div>
                        </div>
                        <a href="" class="nav-item nav-link">Apps Design</a>
                        <a href="" class="nav-item nav-link">Marketing</a>
                        <a href="" class="nav-item nav-link">Research</a>
                        <a href="" class="nav-item nav-link">SEO</a>
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0"><span class="text-primary">E</span>COURSES</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav py-0">
                            <a href="index.html" class="nav-item nav-link">Home</a>
                            <a href="about.html" class="nav-item nav-link">About</a>
                            <a href="course.html" class="nav-item nav-link active">Courses</a>
                            <a href="teacher.html" class="nav-item nav-link">Teachers</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Blog</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="blog.html" class="dropdown-item">Blog List</a>
                                    <a href="single.html" class="dropdown-item">Blog Detail</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                        <a class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block" href="">Join Now</a>
                    </div>
                </nav>
            </div>
        </div>
    </div>
<<<<<<< HEAD
=======
    <jsp:include page="header.jsp"></jsp:include>
>>>>>>> origin/create-course1
=======
    <jsp:include page="header.jsp"></jsp:include>
>>>>>>> origin/crud_quiz
=======
>>>>>>> origin/payment
    <!-- Navbar End -->

    <!-- Header Start -->
    <div class="container-fluid page-header" style="margin-bottom: 90px;">
        <div class="container">
            <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                <h3 class="display-4 text-white text-uppercase">Detail teacher</h3>
                <div class="d-inline-flex text-white">
<<<<<<< HEAD
<<<<<<< HEAD
                    <p class="m-0 text-uppercase"><a class="text-white" href="index.html">Home</a></p>
=======
                    <p class="m-0 text-uppercase"><a class="text-white" href="${pageContext.request.contextPath}/home">Home</a></p>
>>>>>>> origin/create-course1
=======
                    <p class="m-0 text-uppercase"><a class="text-white" href="${pageContext.request.contextPath}/home">Home</a></p>
>>>>>>> origin/crud_quiz
                    <i class="fa fa-angle-double-right pt-1 px-3"></i>
                    <p class="m-0 text-uppercase">Detail teacher</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->

    <!-- Teacher Detail Start -->
    <div class="container-fluid py-5">
<<<<<<< HEAD
<<<<<<< HEAD
=======
  
>>>>>>> origin/crud_quiz
        <div class="container py-5">
            <div class="row">
                  <c:set var="d" value="${detailT}"/>
                <div class="col-lg-4">
                    <img class="teacher-img mb-4" src="${d.avatar}" alt="avatar">
                </div>
                <div class="col-lg-8">
                    <div class="mb-5">
                        <h2 class="mt-4">${d.getFirstName()} ${d.getLastName()}</h2>
                        <h4 class="mt-4">List courses</h4>
                        <c:forEach var="o" items="${listC}">
                        <ul>    
                            <li><a href="course/detail?course_id=${o.id}"><i class="fa fa-check text-primary mr-2"></i>${o.name} (${o.created_at})</a></li>
                        </ul>
<<<<<<< HEAD
=======
  
        <div class="container py-5">
            <div class="row">
                  <c:set var="d" value="${detailT}"/>
                <div class="col-lg-4">
                    <img class="teacher-img mb-4" src="${d.avatar}" alt="avatar">
                </div>
                <div class="col-lg-8">
                    <div class="mb-5">
                        <h2 class="mt-4">${d.getFirstName()} ${d.getLastName()}</h2>
                        <h4 class="mt-4">List courses</h4>
                        <c:forEach var="o" items="${listC}">
                        <ul>    
                            <li><a href="course/detail?course_id=${o.id}"><i class="fa fa-check text-primary mr-2"></i>${o.name} (${o.created_at})</a></li>
                        </ul>
                        </c:forEach>
>>>>>>> origin/create-course1
=======
                        </c:forEach>
>>>>>>> origin/crud_quiz
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Teacher Detail End -->

    <!-- Footer Start -->
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/payment
    <div class="container-fluid bg-dark text-white-50 py-5 px-sm-3 px-lg-5">
        <div class="row pt-5">
            <div class="col-lg-3 col-md-6 mb-5">
                <h5 class="text-white text-uppercase mb-4" style="letter-spacing: 5px;">Liên Hệ</h5>
                <p><i class="fa fa-map-marker-alt mr-2"></i>123 Đường ABC, TP. Hồ Chí Minh</p>
                <p><i class="fa fa-phone-alt mr-2"></i>+012 345 67890</p>
                <p><i class="fa fa-envelope mr-2"></i>info@example.com</p>
                <h6 class="text-white text-uppercase mt-4 mb-3" style="letter-spacing: 5px;">Theo Dõi Chúng Tôi</h6>
                <div class="d-flex justify-content-start">
                    <a class="btn btn-lg btn-primary btn-lg-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-lg btn-primary btn-lg-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-lg btn-primary btn-lg-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-lg btn-primary btn-lg-square" href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h5 class="text-white text-uppercase mb-4" style="letter-spacing: 5px;">Khóa Học Của Chúng Tôi</h5>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Thiết Kế Web</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Thiết Kế Ứng Dụng</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Marketing</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Nghiên Cứu</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>SEO</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Viết Nội Dung</a>
                    <a class="text-white-50" href="#"><i class="fa fa-angle-right mr-2"></i>Thiết Kế Đồ Họa</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h5 class="text-white text-uppercase mb-4" style="letter-spacing: 5px;">Liên Kết Nhanh</h5>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Chính Sách Bảo Mật</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Điều Khoản Sử Dụng</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Câu Hỏi Thường Gặp</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Hỗ Trợ</a>
                    <a class="text-white-50 mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Liên Hệ</a>
                    <a class="text-white-50" href="#"><i class="fa fa-angle-right mr-2"></i>Blog</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-5">
                <h5 class="text-white text-uppercase mb-4" style="letter-spacing: 5px;">Bản Tin</h5>
                <p>Hãy đăng ký để nhận những thông tin mới nhất về các khóa học và giáo viên.</p>
                <div class="w-100">
                    <div class="input-group">
                        <input type="text" class="form-control border-light" style="padding: 30px;" placeholder="Địa Chỉ Email Của Bạn">
                        <div class="input-group-append">
                            <button class="btn btn-primary px-4">Đăng Ký</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container border-top border-dark pt-5">
            <p class="m-0 text-center text-white-50">
                &copy; <a class="text-white" href="#">Tên Trang Của Bạn</a>. All Rights Reserved. Designed by <a class="text-white" href="https://htmlcodex.com">HTML Codex</a>.
                <br>Distributed By: <a class="text-white" href="https://themewagon.com" target="_blank">ThemeWagon</a>
            </p>
        </div>
    </div>
<<<<<<< HEAD
    <!-- Footer End -->
=======
    <jsp:include page="footer.jsp"></jsp:include>
=======
>>>>>>> origin/payment
    <!-- Footer End -->
<<<<<<< HEAD
=======
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Footer End -->
>>>>>>> origin/crud_quiz
=======
>>>>>>> origin/front-end
    <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    <script src="./js/scripts.js"></script>
<<<<<<< HEAD
>>>>>>> origin/create-course1
=======
>>>>>>> origin/crud_quiz
</body>

</html>
