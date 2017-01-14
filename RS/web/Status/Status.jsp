<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/position.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color">
  <a class="navbar-brand" href="#">Brand</a>
  <ul class="nav navbar-nav">
   <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
     <ul class="dropdown-menu" role="menu">
      <li><a href="#">All Positions</a></li>
      <li><a href="#">Sub Menu2</a></li>
      <li><a href="#">Sub Menu3</a></li>
      <li class="divider"></li>
      <li><a href="#">Sub Menu4</a></li>
      <li><a href="#">Sub Menu5</a></li>
     </ul>
   </li>
   <li><a href="#">Link2</a></li>
   <li><a href="#">Link3</a></li>
   <li><a href="#">Link4</a></li>
   <li><a href="#">Link5</a></li>
  </ul>
</div>

<div class="container">
 <div class="row">
 
  <h2>Add new Status:</h2>
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