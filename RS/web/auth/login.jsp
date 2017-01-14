<jsp:include page="../includes/header.jsp" />
<style><jsp:include page="../css/page.css"/></style>

<div class="container">
  <h2>Authentification</h2>
  <form class="form-horizontal" action="../Login" method="POST">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Username/Email</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" name="email" placeholder="Enter email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" name="password" placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>

<jsp:include page="../includes/footer.jsp" />