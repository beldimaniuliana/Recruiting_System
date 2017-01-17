<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color top">
  <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">
   <li><a href="<%=request.getContextPath()%>/GetUsers">Users</a></li>
   <li><a href="AddUser.jsp">Register New Account</a></li>
   <li><a href="<%=request.getContextPath()%>/GetRoles">New Role</a></li>
  </ul>
</div>

<div class="container">
 <div class="row">

  <h2>All Registered Users:</h2> <br/>
         <table class="table table-hover">
                 <th>ID</th>
                 <th>Username</th>
                 <th>Password</th>
                 <th>FirstName</th>
                 <th>LastName</th>
                 <th>Email</th>
                 <th>Phone</th>
                 <th>Active</th>
                 <th>Role</th>
                 <th>Delete</th>
                 <th>Update</th>
                 <c:forEach items="${userList}" var="item">
             <tr>
                 <td>${item.id}</td>
                 <td>${item.username}</td>
                 <td>${item.password}</td>
                 <td>${item.firstName}</td>
                 <td>${item.lastName}</td>
                 <td>${item.email}</td>
                 <td>${item.phone}</td>
                 <td>${item.active}</td>
                 <td>${item.idRole.name}</td>
                 <td>
                     <form action="UpdateUser.jsp" method="POST">
                         <input type="hidden" name="id" value=${item.id}>
                         <input type="hidden" name="username" value=${item.username}>
                         <input type="hidden" name="password" value=${item.password}>
                         <input type="hidden" name="firstName" value=${item.firstName}>
                         <input type="hidden" name="lastName" value=${item.lastName}>
                         <input type="hidden" name="email" value=${item.email}>
                         <input type="hidden" name="phone" value=${item.phone}>
                         <input type="hidden" name="active" value=${item.active}>
                         
                         <input type="submit" value="Edit" class="btn btn-primary">
                     </form>
                 </td>      
                 <td>
                     <form action="../DeleteUser" method="POST">
                         <input type="hidden" name="id" value="${item.id}">
                         <input type="submit" value="Delete" class="btn btn-danger">
                     </form>
                 </td>
             </tr>
             </c:forEach>
         </table>
 
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />