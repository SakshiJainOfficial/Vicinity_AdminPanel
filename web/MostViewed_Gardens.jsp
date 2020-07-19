<%-- 
    Document   : index
    Created on : Mar 25, 2020, 1:27:23 PM
    Author     : sakshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" >
        <script src="https://kit.fontawesome.com/e136c16ae6.js" crossorigin="anonymous"></script>
        
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css" />
        <link rel="stylesheet" type="text/css" href="vendors/css/grid.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" type="text/css" href="css/Table.css"/>
        
         <!-- Bootstrap CSS CDN -->
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="css/SideBar.css">
        <title>Welcome Page</title>
    </head>
    <body>
        <!--Header-->
        <%@include file="header.jsp" %>
        <!--Header-->
        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h4>Functionalities</h4>
                </div>

                <ul class="list-unstyled components">
<!--                    <p>How many people visited Website?</p>-->
                      <li>
                          <a href="People_Visited.jsp">How many people visited Website?</a>
                    </li>
<!--                    <li class="active">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">Home</a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">
                            <li><a href="#">Home 1</a></li>
                            <li><a href="#">Home 2</a></li>
                            <li><a href="#">Home 3</a></li>
                        </ul>
                    </li>-->
                    <li>
                        <a href="MostViewed_Gardens.jsp">Most viewed Gardens</a>
<!--                        <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false">Pages</a>
                        <ul class="collapse list-unstyled" id="pageSubmenu">
                            <li><a href="#">Page 1</a></li>
                            <li><a href="#">Page 2</a></li>
                            <li><a href="#">Page 3</a></li>
                        </ul>-->
                    </li>
                    <li>
                        <a href="Star_Ratings.jsp">Star Ratings</a>
                    </li>
                    
                    <li>
                        <a href="RobinHood_Details.jsp">Robin hood distribution Details</a>
                    </li>
                </ul>

<!--                <ul class="list-unstyled CTAs">
                    <li><a href="https://bootstrapious.com/tutorial/files/sidebar.zip" class="download">Download source</a></li>
                    <li><a href="https://bootstrapious.com/p/bootstrap-sidebar" class="article">Back to article</a></li>
                </ul>-->
            </nav>

            <!-- Page Content Holder -->
            <div id="content">

                <nav class="navbar navbar-default">
                    <div class="container-fluid" style="display: inline-block">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="navbar-btn">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav navbar-right" style="display: inline-block">
                                <li><a href="Gardens_Registered.jsp"><b>Garden Registered</b></a></li>
                                <li><a href="Requests_Pending.jsp"><b>Requests Pending</b>></a></li>
<!--                                <li><a href="#">Page</a></li>
                                <li><a href="#">Page</a></li>-->
                            </ul>
                        </div>
                    </div>
                </nav>

                <h2>Most Viewed Gardens</h2>
                <p>Following table gives the detail of the Gardens which are booked most from the Website.This would help us to make some changes in the Website if required. It will also give us the Growth rate of our Website among People.  </p>
                <table>
                    <tr>
                        <th>S.NO.</th>
                        <th>Name of Garden</th>
                        <th>Total Bookings</th>
                        <th>View Details</th>
                    </tr>
                    <tr>
                        <td>1.</td>
                        <td>Sunflower Garden</td>
                        <td>50</td>
                        <td>Details</td>
                        
                    </tr>
                    <tr>
                        <td>2.</td>
                        <td>Clinton Garden</td>
                        <td>40</td>
                        <td>Details</td>
                    </tr>
                    <tr>
                        <td>3.</td>
                        <td>Lilly Garden</td>
                        <td>18</td>
                        <td>Details</td>
                    </tr>
                    <tr>
                        <td>4.</td>
                        <td>Radisson Garden</td>
                        <td>25</td>
                        <td>Details</td>
                    </tr>
                    <tr>
                        <td>5.</td>
                        <td>Ghoonghat Garden</td>
                        <td>25</td>
                        <td>Details</td>
                    </tr>
                    <tr>
                        <td>6.</td>
                        <td>Vivaah Garden</td>
                        <td>25</td>
                        <td>Details</td>
                    </tr>
                </table>
            </div>
        </div>

        
        <!--Footer-->
        <%@include file="footer.jsp" %>
        <!--Footer-->
        
        
        <!--JavaScript-->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
    
    
        
        <!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

         <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                     $(this).toggleClass('active');
                 });
             });
         </script>
    
    </body>
</html>
