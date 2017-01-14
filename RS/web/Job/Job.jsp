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
 
  <h2>New Job Offer:</h2>
  <form action="../AddJob" method="POST">
    <div class="form-group">
      <label for="position">Position:</label>
      <select class="form-control" name="position">
            <c:forEach items="${positions}" var="item">
                <option value="1">test</option>
                <option value=${item.id}>${item.name}</option>
            </c:forEach>
      </select>
    </div>
      
    <div class="form-group">
      <label for="candidate">Candidate</label>
        <select class="form-control" name="candidate">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select>
    </div>
      
    <div class="form-group">
      <label for="date">Date</label>
      <input type="date" class="form-control" name="date" placeholder="Date">
    </div> 
      
    <div class="form-group">
      <label for="status">Status</label>
        <select class="form-control" name="status">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select>
    </div>
      
     <div class="form-group">
      <label for="spot">Available Spots</label>
      <input type="number" class="form-control" name="spot" placeholder="Spot number">
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
    
        <h2>All Jobs</h2>
        <p>Here are all jobs</p>            
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Date</th>
              <th>Number of spots</th>
              <th>Position</th>
              <th>Delete</th>
              <th>Update</th>
            </tr>
          </thead>
           
          <tbody>
          <c:forEach items="${jobs}" var="item">    
            <tr>
                <td>${item.date}</td>
                <td>${item.noSpot}</td>
                <td>${item.idPosition.id}</td>
                <td><a href="">Delete</a></td>
                <td><a href="">Update</a>
                   
                </td>
            </tr>
          </c:forEach>
          </tbody>
       
        </table>
 </div>
</div>


<jsp:include page="../includes/footer.jsp" />