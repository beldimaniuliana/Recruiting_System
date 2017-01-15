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
 
<div class="container">
 <div class="row">
   <h3>Create a new role</h3> <br/>  
     <form action="../AddRole" method="POST">
         <br/> <br/>   
    <div class="form-group"> 
      <input type="text" class="form-control" name="role" placeholder="Role">
     </div>
      <br/>    
    <button type="submit" class="btn btn-default">Create</button>
  </form>
     
 </div>
</div>  
     
     
  <br/><br/><br/><br/>
  <h3>All Roles</h3> <br/>
         <table class="table table-hover">
                 <th>ID</th>
                 <th>Role</th>
               
                 <c:forEach items="${roleList}" var="item">
             <tr>
                 <td>${item.id}</td>
                 <td>${item.name}</td>
                 <td>
                     <form action="UpdateRole.jsp" method="POST">
                         <input type="hidden" name="id" value=${item.id}>
                         <input type="hidden" name="name" value=${item.name}>
                         <input type="submit" value="Edit" class="btn btn-primary">
                     </form>
                 </td>      
                 <td>
                     <form action="../DeleteRole" method="POST">
                         <input type="hidden" name="id" value=${item.id}>
                         <input type="submit" value="Delete" class="btn btn-danger">
                     </form>
                 </td>
             </tr>
             </c:forEach>
         </table>
 
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />