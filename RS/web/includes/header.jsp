<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style><jsp:include page="../css/page.css"/></style>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recruiting System</title>
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    
    <body>
        
    <div id="page">
        
        <div id="header"></div>
        
        <div id="menu">
            
            <nav class="navbar navbar-default">
              <div class="container-fluid">
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">** Recruiting System **</a>
                </div>
                <ul class="nav navbar-nav">
                  <li class="active"><a href="http://localhost:8080/RS">Home</a></li>
                  <li><a href="#">About Us</a></li>
                  <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Career
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="<%=request.getContextPath()%>/GetJobOffer">Jobs</a></li>
                      <li><a href="#">CV Model</a></li>
                    </ul>
                  </li>
                  <li><a href="http://localhost:8080/RS/auth/contact.jsp">Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="http://localhost:8080/RS/auth/login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> 
                </ul>
              </div>
            </nav>
            
        </div>
        
        <div id="main" class="container">
            
 
  
