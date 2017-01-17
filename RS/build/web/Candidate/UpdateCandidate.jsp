
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color">
  <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">
   <li><a href="<%=request.getContextPath()%>/GetCandidate">Candidate</a></li>
   <li><a href="AddCandidate.jsp">Register Candidate</a></li>
  </ul>
</div>

<div class="container">
 <div class="row">
     
     <h2>Edit Candidate:</h2>   
  <form action="../UpdateCandidate" method="POST">
       
    <div class="form-group">
      <label for="firstname">First name:</label> 
      <input type="hidden" class="form-control" name="id" value=<%= request.getParameter("id")%>>
      <input type="text" class="form-control" name="firstname" value="<%= request.getParameter("firstName")%>">
    </div>  
         
    <div class="form-group">   
      <label for="lastname">Last name:</label> 
      <input type="text" class="form-control" name="lastname" value="<%= request.getParameter("lastName")%>">
    </div>  
      
    <div class="form-group">
      <label for="jobs">Job</label>
        <select class="form-control" name="job">
            <option value=1>Test</option>
            <c:forEach items="${jobs}" var="item">
                <option value=${item.id}>${item.id}</option>
            </c:forEach>
        </select>
    </div>  
            
    <div class="form-group">
        <label for="fileName">Select file to upload:</label>
        <input type="file" name="fileName">
    </div>        
            
    <input type="submit" class="btn btn-default" value="Update">
    
    </form>   
 
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />