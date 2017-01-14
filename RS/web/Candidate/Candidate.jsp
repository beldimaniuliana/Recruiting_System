<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color">
   <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">  
    <li><a href="#">Candidates</a></li>
    <li><a href="#">Candidates Report</a></li>
  </ul>
</div>

<div class="container">
 <div class="row">
 
  <h2>Add new Candidate:</h2>
  <form action="../addPosition" method="POST">
    <div class="form-group">
      <label for="de la input name: numele aici">Position name:</label>
      <input type="text" class="form-control" name="numele" placeholder="Position">
    </div>
      
    <div class="form-group">
      <label for="la fel si aici">Position Requirements</label>
      <input type="text" class="form-control" name="hehe" placeholder="Requirements">
    </div>  
      
    <button type="submit" class="btn btn-default">Create</button>
  </form>
 
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />