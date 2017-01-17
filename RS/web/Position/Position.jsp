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
 
  <h2>Add new Job Position:</h2>
  <form action="../AddPosition" method="POST">
    <div class="form-group">
      <label for="position">Position name:</label>
      <input type="text" class="form-control" name="position" placeholder="Position">
    </div>
      
    <div class="form-group">
      <label for="requirements">Position Requirements</label>
      <input type="text" class="form-control" name="requirements" placeholder="Requirements">
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
    

        <h2>Job Positions</h2>
        <p>Here are all available positions</p>            
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Name</th>
              <th>Requirements</th>
              <th>Delete</th>
              <th>Update</th>
            </tr>
          </thead>
           
          <tbody>
          <c:forEach items="${positions}" var="item">    
            <tr>
                <td>${item.name}</td>
                <td>${item.requirements}</td>
                <td>
                    <form action="../DeletePosition" method="POST">
                        <input type="hidden" name="id" value=${item.id}>
                        <input type="submit" value="Delete" class="btn btn-danger">
                    </form>
                </td>
                <td>
                    <form action="UpdatePosition.jsp" method="POST">
                        <input type="hidden" name="id" value=${item.id}>
                        <input type="hidden" name="position" value=${item.name}>
                        <input type="hidden" name="requirements" value=${item.requirements}>
                        <input type="submit" value="Edit" class="btn btn-primary">
                    </form>
                </td>
            </tr>
          </c:forEach>
          </tbody>
       
        </table>
 </div>
</div>

    

<jsp:include page="../includes/footer.jsp" />