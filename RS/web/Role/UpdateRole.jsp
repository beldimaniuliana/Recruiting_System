<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color">
  <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">
   <li><a href="<%=request.getContextPath()%>/GetUsers">Users</a></li>
   <li><a href="AddUser.jsp">Register User</a></li>
   <li><a href="<%=request.getContextPath()%>/GetRoles">New Role</a></li>
  </ul>
</div>


 
<div class="container">
 <div class="row">
   <h3>Create a new role</h3> <br/>  
     <form action="../UpdateRole" method="POST">
         <br/> <br/>   
    <div class="form-group"> 
      <input type="hidden" class="form-control" name="id"  value=<%= request.getParameter("id")%>>
    </div>     
         
    <div class="form-group"> 
      <input type="text" class="form-control" name="name"  value=<%= request.getParameter("name")%>>
     </div>
      <br/>    
    <button type="submit" class="btn btn-default">Edit</button>
  </form>
     
 </div>
</div>  



<jsp:include page="../includes/footer.jsp" />