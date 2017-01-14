<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/position.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color">
  <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">
    <li><a href="#">Job Offer</a></li> 
    <li><a href="#">New Status</a></li> 
  </ul>
</div>

<div class="container">
 <div class="row">
 
  <h2>Add new Job Position:</h2>
  <form action="../addPosition" method="POST">
    <div class="form-group">
      <label for="position">Position name:</label>
      <input type="text" class="form-control" name="position" placeholder="Position">
    </div>
      
    <div class="form-group">
      <label for="requirements">Position Requirements</label>
      <input type="text" class="form-control" name="requirements" placeholder="Requirements">
    </div>  
      
    <button type="submit" class="btn btn-default">Create</button>
  </form>
  
  <br><br>
  
  <% if(session.getAttribute("msg") != null) { %>
    <div class="alert alert-success">
        <strong>
            <%= session.getAttribute("msg") %>
        </strong>
    </div>
  <% } %>

  
   
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />