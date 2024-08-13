<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Create Lesson - ECOURSES</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <!-- Topbar Start -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- Topbar End -->

            <!--**********************************
                    Content body start
                ***********************************-->
            <div class="content-body">
                <!-- row -->
                <div class="container-fluid">

                    <div style="margin-top: 10px;" class="row page-titles mx-0">
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Add Lesson</h4>
                                </div>
                                <div class="card-body">
                                    <form action="lessonManagement" method="get">
                                    <c:if test="${not empty errorMess}">
                                        <div class="alert alert-danger">${errorMess}</div>
                                    </c:if>
                                    <c:if test="${not empty successMess}">
                                        <div class="alert alert-success">${successMess}</div>
                                    </c:if>
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label class="form-label">Course Name</label>
                                                <input type="text" class="form-control" value="${course.name}" readonly >
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label class="form-label">Lesson Name</label>
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                                                <input type="text" name="lessonName" class="form-control">
=======
                                                <input type="text" name="lessonName" class="form-control" value="${lessonName}">
>>>>>>> origin/create-course1
=======
                                                <input type="text" name="lessonName" class="form-control" value="${lessonName}">
>>>>>>> origin/crud_quiz
=======
                                                <input type="text" name="lessonName" class="form-control" value="${lessonName}">
>>>>>>> origin/front-end
=======
                                                <input type="text" name="lessonName" class="form-control">
>>>>>>> origin/payment
                                            </div>
                                            <table >
                                                <tbody>
                                                    <tr>
                                                        <td>  <label class="form-label">Active Lesson</label></td>
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                                                        <td> <input type="radio" name="active" value="0" checked></td>
=======
                                                        <td> <input type="radio" name="active" value="0" ${active eq 0 ?"checked":""} ></td>
>>>>>>> origin/crud_quiz
=======
                                                        <td> <input type="radio" name="active" value="0" ${active eq 0 ?"checked":""} ></td>
>>>>>>> origin/front-end
                                                    </tr>
                                                    <tr>
                                                        <td> <label class="form-label">Inactive Lesson</label></td>
                                                        <td>  <input type="radio" name="active" value="1" ${active eq 1 ?"checked":""}></td>
                                                    </tr>
                                                </tbody>
                                            </table>                        
<<<<<<< HEAD
<<<<<<< HEAD
                                            <input type="hidden" name="courseId" value="${courseId}"/>
=======
                                                        <td> <input type="radio" name="active" value="0" ${active eq 0 ?"checked":""} ></td>
                                                    </tr>
                                                    <tr>
                                                        <td> <label class="form-label">Inactive Lesson</label></td>
                                                        <td>  <input type="radio" name="active" value="1" ${active eq 1 ?"checked":""}></td>
                                                    </tr>
                                                </tbody>
                                            </table>                        
                                            <input type="hidden" name="courseId" value="${course.id}"/>
>>>>>>> origin/create-course1
=======
                                            <input type="hidden" name="courseId" value="${course.id}"/>
>>>>>>> origin/crud_quiz
=======
                                            <input type="hidden" name="courseId" value="${courseId}"/>
>>>>>>> origin/front-end
=======
                                                        <td> <input type="radio" name="active" value="0" checked></td>
                                                    </tr>
                                                    <tr>
                                                        <td> <label class="form-label">Inactive Lesson</label></td>
                                                        <td>  <input type="radio" name="active" value="1" ></td>
                                                    </tr>
                                                </tbody>
                                            </table>                        
                                            <input type="hidden" name="courseId" value="${courseId}"/>
>>>>>>> origin/payment
                                            <input type="hidden" name="action" value="${action}"/>
                                          
                                            
                                            
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                            <a href="CourseContentManagement" class="btn btn-light" style="background-color: gainsboro;">Cancel</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--**********************************
            Content body end
        ***********************************-->

        <!-- Footer Start -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer End -->

        <!-- JavaScript Libraries -->
                        <script src="./js/scripts.js"></script>
 <script src="js/main.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
