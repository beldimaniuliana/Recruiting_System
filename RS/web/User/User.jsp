<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color">
  <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">
   <li><a href="#">Users</a></li>
   <li><a href="#">New Role</a></li>
  </ul>
</div>

<div class="container">
 <div class="row">
 
  <h3>Register a new user</h3>
  <a class="btn btn-link" href="<%=request.getContextPath()%>/GetRolesList" role="button">Go to Register</a>
  
  <br/><br/><br/><br/>
  <h2>All Registered users</h2> <br/>
         <table class="table table-hover">
                 <th>ID</th>
                 <th>USERNAME</th>
                 <th>PASSWORD</th>
                 <th>FIRST NAME</th>
                 <th>LAST NAME</th>
                 <th>EMAIL</th>
                 <th>PHONE</th>
                 <th>ACTIVE</th>
                 <th>ROLE</th>
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
                     <form action="../UpdateUser" method="POST">
                         <input type="hidden" name="id" value="${item.id}">
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