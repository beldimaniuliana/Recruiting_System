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
 
  <h2>Add new Status:</h2>
  <form action="../AddStatus" method="POST">
    <div class="form-group">
      <label for="status">Status:</label>
      <input type="text" class="form-control" name="status" placeholder="Status">
    </div>  
      
      <input type="submit" class="btn btn-primary" value="Create">
  </form>
  
  <br><br>
  
    <% if(session.getAttribute("msg") != null) { %>
      <div class="alert alert-success">
          <strong>
              <%= session.getAttribute("msg") %>
          </strong>
      </div>
    <% } %>
    
    <h2>Display all status:</h2>          
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Name</th>
              <th>Delete</th>
              <th>Update</th>
            </tr>
          </thead>
           
          <tbody>
          <c:forEach items="${listStatus}" var="item">    
            <tr>
                <td>${item.name}</td>
                
               
                <td>
                        <form action="../DeleteStatus" method="POST">
                            <input type="hidden" name="id" value="${item.id}" >
                            <input type="hidden" name="name" value="${item.name}" >
                            <input type="submit" value="Delete" class="btn btn-danger">
                            
                        </form>
                    
                </td>
                
                <td>
                    <form action="UpdateStatus.jsp" method="POST">
                        <input type="hidden" name="id" value=${item.id}>
                        <input type="hidden" name="status" value=${item.name}>
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