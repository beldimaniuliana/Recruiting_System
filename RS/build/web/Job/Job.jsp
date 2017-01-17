<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 
  <h2>New Job Offer:</h2>
  <form action="../AddJob" method="POST">
    <div class="form-group">
      <label for="position">Position:</label>
      <select class="form-control" name="position">
            <c:forEach items="${positions}" var="item">
                <option value=${item.id}>${item.name}</option>
            </c:forEach>
      </select>
    </div>
      
    <div class="form-group">
      <label for="candidate">Candidate</label>
                
          <select class="form-control" name="candidate">
              <option>None</option>
            <c:forEach items="${candidates}" var="item">
                <option value=${item.id}>${item.id}</option>
            </c:forEach>
      </select>
    </div>
      
    <div class="form-group">
      <label for="date">Date</label>
      <input type="date" class="form-control" name="date" placeholder="Date">
    </div> 
      
    <div class="form-group">
      <label for="status">Status</label>
        <select class="form-control" name="status">
            <c:forEach items="${status}" var="item">
                <option value=${item.id}>${item.name}</option>
            </c:forEach>
        </select>
    </div>
      
     <div class="form-group">
      <label for="spot">Available Spots</label>
      <input type="number" class="form-control" name="spot" placeholder="Spot number">
    </div>  

     <input type="submit" value="Create" class="btn btn-primary">       
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
              <th>Candidate</th>
              <th>Status</th>
              <th>Delete</th>
              <th>Update</th>
            </tr>
          </thead>
           
          <tbody>
          <c:forEach items="${jobs}" var="item">    
            <tr>
                <td>${item.date}</td>
                <td>${item.noSpot}</td>
                <td>${item.idPosition.name}</td>
                <td>${item.idCandidate.name}</td>
                <td>${item.idStatus.name}</td>
                <td>
                    <form action="../DeleteJob" method="POST">
                        <input type="hidden" name="id" value=${item.id}>
                        <input type="submit" name="submit" value="Delete"  class="btn btn-danger">
                    </form>
                </td>
                <td>
                    <form action="UpdateJob.jsp" method="POST">
                        <input type="hidden" name="id" value=${item.id}>
                        <input type="hidden" name="date" value=${item.date}>
                        <input type="hidden" name="spot" value=${item.noSpot}>
                        <input type="hidden" name="position" value=${item.idPosition.id}>
                        <input type="hidden" name="candidate" value=${item.idCandidate.id}>
                        <input type="hidden" name="status" value=${item.idStatus.id}>
                        <input type="submit" name="submit" value="Edit" class="btn btn-primary">
                    </form>
                </td>
            </tr>
          </c:forEach>
          </tbody>
       
        </table>
 </div>
</div>


<jsp:include page="../includes/footer.jsp" />