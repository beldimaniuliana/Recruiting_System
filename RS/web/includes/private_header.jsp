<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        
        <nav class="navbar navbar-default menu">
              <div class="container-fluid">
                <div class="navbar-header">
                  <a class="navbar-brand" href="#">** Recruiting System **</a>
                </div>
                <ul class="nav navbar-nav">
                  <li class="active"><a href="http://localhost:8080/RS/private/index.jsp">Home</a></li>
                  <li> <a href="<%=request.getContextPath()%>/GetPosition">Job Positions</a>
                  <li><a href="http://localhost:8080/RS/Candidate/Candidate.jsp">Candidates</a></li>
                  <li><a href="<%=request.getContextPath()%>/GetUsers">Users</a></li>
                  <li><a href="http://localhost:8080/RS/auth/contact.jsp">Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="http://localhost:8080/RS/"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                </ul>
              </div>
        </nav>
     
        <div id="main">        

            
            
 
  
