
<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color top">
  <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">
      <li> <a href="<%=request.getContextPath()%>/GetJob">Job Offer</a></li>
    <li><a href="<%=request.getContextPath()%>/GetStatus">New Status</a></li> 
  </ul>
</div>

<div class="container">
 <div class="row">

  <% request.setAttribute("id", request.getParameter(request.getParameter("id"))); %>   
  <h2>Update</h2>
  <form action="../UpdateStatus" method="POST">
      <input type="hidden" name="id" value=<%= request.getParameter("id")%>>
    <div class="form-group">
      <label for="status">Status name:</label>
      <input type="text" class="form-control" name="status" value=<%=request.getParameter("status")%>>
    </div>
      
    <input type="submit" value="Edit" class="btn btn-primary">
  </form>

  
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />