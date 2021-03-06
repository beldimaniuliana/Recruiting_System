<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color top">
  <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">
   <li><a href="<%=request.getContextPath()%>/GetUsers">Users</a></li>
   <li><a href="../User/AddUser.jsp">Register New Account</a></li>
   <li><a href="<%=request.getContextPath()%>/GetRoles">New Role</a></li>
  </ul>
</div>

<div class="container">
 <div class="row">
 
<div class="container">
 <div class="row">
   <h2>Add New Role</h2> <br/>  
     <form action="../AddRole" method="POST">
    <div class="form-group"> 
      <label for="role">Role: </label>  
      <input type="text" class="form-control" name="role" placeholder="Role">
     </div>   
     <input type="submit" value="Create" class="btn btn-primary">
  </form>
     
 </div>
</div>  
     
  <h2>All Roles</h2> <br/>
         <table class="table table-hover">
                 <th>ID</th>
                 <th>Role</th>
                 <th>Delete</th>
                 <th>Update</th>
                 <c:forEach items="${roleList}" var="item">
             <tr>
                 <td>${item.id}</td>
                 <td>${item.name}</td>
                 <td>
                     <form action="../DeleteRole" method="POST">
                         <input type="hidden" name="id" value=${item.id}>
                         <input type="submit" value="Delete" class="btn btn-danger">
                     </form>
                 </td>
                 <td>
                     <form action="UpdateRole.jsp" method="POST">
                         <input type="hidden" name="id" value=${item.id}>
                         <input type="hidden" name="name" value=${item.name}>
                         <input type="submit" value="Edit" class="btn btn-primary">
                     </form>
                 </td>      
             </tr>
             </c:forEach>
         </table>
 
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />