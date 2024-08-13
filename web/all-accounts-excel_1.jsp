<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>Edumin - Bootstrap Admin Dashboard </title>
        <!-- Favicon icon -->
        <link rel="icon" type="image/png" sizes="16x16" href="images2/favicon.png">
        <link rel="stylesheet" href="vendor/jqvmap/css/jqvmap.min.css">
        <link rel="stylesheet" href="vendor/chartist/css/chartist.min.css">
        <link rel="stylesheet" href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
        <link rel="stylesheet" href="css2/style.css">
        <link rel="stylesheet" href="css2/skin-2.css">


        <link rel="stylesheet" href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
        <!-- Datatable -->
        <link href="vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/line-awesome/1.3.0/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">


        <style>
            .custom-radio {
                appearance: none;
                -webkit-appearance: none;
                -moz-appearance: none;
                width: 20px;
                height: 20px;
                border-radius: 50%;
                border: 2px solid #6a0dad; /* Purple border color */
                background-color: #fff;
                outline: none;
                cursor: not-allowed; /* Shows not-allowed cursor */
            }

            .custom-radio:checked {
                background-color: #6a0dad; /* Purple background color */
            }

            .custom-radio:disabled {
                cursor: not-allowed; /* Shows not-allowed cursor */
            }
        </style>
    </head>

    <body>
        <c:if test="${messi != null}">
            <%
                String alertMessage = "This " + (String)  request.getAttribute("messi") + " account has been successfully added. " ;
            %>
            <script type="text/javascript">
                alert("<%= alertMessage %>");
            </script>
        </c:if>
        <c:if test="${messi_all != null}">
            <%
                String alertMessage = "All account has been successfully added. " ;
            %>
            <script type="text/javascript">
                alert("<%= alertMessage %>");
            </script>
        </c:if>


        <!--*******************
            Preloader start
        ********************-->
        <div id="preloader">
            <div class="sk-three-bounce">
                <div class="sk-child sk-bounce1"></div>
                <div class="sk-child sk-bounce2"></div>
                <div class="sk-child sk-bounce3"></div>
            </div>
        </div>
        <!--*******************
            Preloader end
        ********************-->

        <!--**********************************
            Main wrapper start
        ***********************************-->
        <div id="main-wrapper">

            <!--**********************************
                Nav header start
            ***********************************-->
            <div class="nav-header">
                <a href="list_accounts" class="brand-logo">
                    <img class="logo-abbr" src="images2/logo-white.png" alt="">
                    <img class="logo-compact" src="images2/logo-text-white.png" alt="">
                    <img class="brand-title" src="images2/logo-text-white.png" alt="">
                </a>

                <div class="nav-control">
                    <div class="hamburger">
                        <span class="line"></span><span class="line"></span><span class="line"></span>
                    </div>
                </div>
            </div>
            <!--**********************************
                Nav header end
            ***********************************-->

            <!--**********************************
                Header start
            ***********************************-->
        <jsp:include page="admin_header.jsp"></jsp:include>
            <!--**********************************
                Sidebar end
            ***********************************-->

            <!--**********************************
                Content body start
            ***********************************-->
            <div class="content-body">
                <c:if test="${check == 1}">
                    <script>
                        function showAlert() {
                            alert("d?daslsadhkasdjkasdh");
                        }
                    </script>
                </c:if>
                <!-- row -->
                <div class="container-fluid">

                    <div class="row page-titles mx-0">
                        <div class="col-sm-6 p-md-0">
                            <div class="welcome-text">
                                <h4>All MENTOR ACCOUNTS IN EXCEL</h4>
                                <a href="all_mentor_accounts?check=1"  class="btn btn-sm btn-primary"  title="ADD"><i class="fas fa-plus"></i></a>
                            </div>
                        </div>
                        <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="nav nav-pills mb-3">
                                <li class="nav-item"><a href="#list-view" data-toggle="tab" class="nav-link btn-primary mr-1 show active">List View</a></li>

                            </ul>
                        </div>
                        <div class="col-lg-12">
                            <div class="row tab-content">
                                <div id="list-view" class="tab-pane fade active show col-lg-12">
                                    <div class="card">
                                        <div class="card-header">


                                        </div>
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table id="example3" class="display" style="min-width: 845px">
                                                    <thead>
                                                        <tr>


                                                            <th>Name</th>
                                                            <th>Password</th>
                                                            <th>Email</th>


                                                            <th>First Name</th>
                                                            <th>Last Name</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                        <c:forEach var="l"  items="${accounts}">
                                                            <tr>


                                                                <td>${l.name}</td>

                                                                <td>${l.password}</td>
                                                                <td><strong>${l.email}</strong></td>

                                                                <td>${l.first_name}</td>
                                                                <td>${l.last_name}</td>

                                                                <td>
                                                                    <a href="all_mentor_accounts?add=${l.idcheck}"  class="btn btn-sm btn-primary"  title="ADD"><i class="fas fa-plus"></i></a>

                                                                </td>												
                                                            </tr>


                                                        </c:forEach>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!--**********************************
                Content body end
            ***********************************-->


            <!--**********************************
                Footer start
            ***********************************-->
            <div class="footer">
                <div class="copyright">

                </div>
            </div>
            <!--**********************************
                Footer end
            ***********************************-->

            <!--**********************************
       Support ticket button start
    ***********************************-->

            <!--**********************************
               Support ticket button end
            ***********************************-->


        </div>
        <!--**********************************
            Main wrapper end
        ***********************************-->

        <!--**********************************
            Scripts
        ***********************************-->
        <!-- Required vendors -->
        <script src="vendor/global/global.min.js"></script>



        <!-- Datatable -->
        <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
        <script src="js2/plugins-init/datatables.init.js"></script>

        <!-- Svganimation scripts -->
        <script src="vendor/svganimation/vivus.min.js"></script>
        <script src="vendor/svganimation/svg.animation.js"></script>
        <script src="js2/styleSwitcher.js"></script>





        <script src="js2/custom.min.js"></script>
        <script src="js2/dlabnav-init.js"></script>

        <!-- Chart ChartJS plugin files -->
        <script src="vendor/chart.js/Chart.bundle.min.js"></script>

        <!-- Chart piety plugin files -->
        <script src="vendor/peity/jquery.peity.min.js"></script>

        <!-- Chart sparkline plugin files -->
        <script src="vendor/jquery-sparkline/jquery.sparkline.min.js"></script>

        <!-- Demo scripts -->
        <script src="js2/dashboard/dashboard-3.js"></script>

        <!-- Svganimation scripts -->

        <script>
                        document.addEventListener('DOMContentLoaded', (event) => {
                            const radio = document.querySelector('.custom-radio');
                            radio.disabled = true; // Ensuring it's disabled
                        });
        </script>



    </body>
</html>