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
  <% request.setAttribute("id", request.getParameter(request.getParameter("id"))); %> 
  <h2>Update Job:</h2>
  <form action="../UpdateJob" method="POST">
      <input type="hidden" name="id" value=<%= request.getParameter("id")%>>
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
      <input type="date" class="form-control" name="date" value=<%=request.getParameter("date")%>>
    </div> 
      
    <div class="form-group">
      <label for="status">Status</label>
        <select class="form-control" name="status">
            <c:forEach items="${status}" var="item">
                <option value="1">test</option>
                <option value=${item.id}>${item.name}</option>
            </c:forEach>
        </select>
    </div>
      
     <div class="form-group">
      <label for="spot">Available Spots</label>
      <input type="number" class="form-control" name="spot" value=<%=request.getParameter("spot")%>>
    </div>  
      
    <button type="submit"  class="btn btn-primary">Update</button>
  </form>

 </div>
</div>


<jsp:include page="../includes/footer.jsp" />