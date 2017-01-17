<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>


<div class="navbar navbar-inverse navbar-fixed-left color top">
  <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">
    <li> <a href="<%=request.getContextPath()%>/GetJob">Job Offer</a></li>
    <li><a href="#">New Status</a></li> 
  </ul>
</div>

<div class="container">
 <div class="row">

  <% request.setAttribute("id", request.getParameter(request.getParameter("id"))); %>   
  <h2>Update Position</h2>
  <form action="../UpdatePosition" method="POST">
      <input type="hidden" name="id" value=<%= request.getParameter("id")%>>
    <div class="form-group">
      <label for="position">Position name:</label>
      <input type="text" class="form-control" name="position" value=<%=request.getParameter("position")%>>
    </div>
      
    <div class="form-group">
      <label for="requirements">Position Requirements</label>
      <input type="text" class="form-control" name="requirements" value=<%=request.getParameter("requirements")%>>
    </div>  
      
    <button type="submit" class="btn btn-default">Update</button>
  </form>

 </div>
</div>

   
<jsp:include page="../includes/footer.jsp" />