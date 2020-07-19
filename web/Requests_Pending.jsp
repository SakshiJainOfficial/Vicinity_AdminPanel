<%-- 
    Document   : Requests_Pending
    Created on : Apr 26, 2020, 2:58:03 PM
    Author     : sakshi
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css" >
        <script src="https://kit.fontawesome.com/e136c16ae6.js" crossorigin="anonymous"></script>



        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Request Pending</title>
    </head>
    <body>
        <!--Header-->
        <%@include file="header.jsp" %>
        <!--Header-->
        
        <% ArrayList<ArrayList> Rows = (ArrayList<ArrayList>) request.getSession().getAttribute("requestPendingList");
            for (int i = 0; i < Rows.size(); i++) {
        %>       
        
        <div class="card">
            <h5 class="card-header">Featured</h5>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-3">
                        <p class="card-title"><b> Name:</b> <%= Rows.get(i).get(1)%><b> Price:</b> <%= Rows.get(i).get(2)%></p>
                    </div>
                </div> 
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>


                <form action="DeleteServlet" method="get">
                    <button type="submit" class="btn btn-primary" name="deleteId" value="<%= Rows.get(i).get(0)%>"> Delete </button>
                </form>
            </div>
        </div>
        <%}%>
        <br>

        <% response.setHeader("Cache-Control", "no-cache");
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);%>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
