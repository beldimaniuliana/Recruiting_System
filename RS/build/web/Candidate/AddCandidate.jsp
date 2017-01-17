<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color">
  <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">
   <li><a href="<%=request.getContextPath()%>/GetCandidate">Candidate</a></li>
   <li><a href="AddCandidate.jsp">Register Candidate</a></li>
  </ul>
</div>

<div class="container">
 <div class="row">
     
     <form action="../AddCandidate" method="POST">
         <br/> <br/>         
    <div class="form-group">  
      <input type="text" class="form-control" name="firstname" placeholder="First Name">
    </div>  
         
    <div class="form-group">   
      <input type="text" class="form-control" name="lastname" placeholder="Last Name">
    </div>  
           
     <input type="submit" value="Create" class="btn btn-primary">       
  </form>
 
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />
