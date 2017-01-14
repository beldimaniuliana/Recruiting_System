<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>


<div class="navbar navbar-inverse navbar-fixed-left color top">
  <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">
    <li> <a href="<%=request.getContextPath()%>/GetJob">Job Offer</a>
    <li><a href="#">New Status</a></li> 
  </ul>
</div>

<div class="container">
 <div class="row">
 
  <h2>New Job Offer:</h2>
  <form action="../AddPosition" method="POST">
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
    

        <h2>Jobs</h2>
        <p>Job</p>            
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Name</th>
              <th>Requirements</th>
            </tr>
          </thead>
           
          <tbody>
          <c:forEach items="${}" var="item">    
       
          </c:forEach>
          </tbody>
       
        </table>

 </div>
</div>


<jsp:include page="../includes/footer.jsp" />