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
     
     <form action="../UpdateUser" method="POST">
         <br/> <br/>   
     <div class="form-group"> 
      <input type="hidden" class="form-control" name="id" value=<%= request.getParameter("id")%>>
    </div>     
         
    <div class="form-group"> 
      <label for="username">Username: </label>  
      <input type="text" class="form-control" name="username" value=<%= request.getParameter("username")%>>
    </div>
      
    <div class="form-group"> 
       <label for="password">Password: </label>    
      <input type="password" class="form-control" name="password" value=<%= request.getParameter("password")%>>
    </div>  
         
    <div class="form-group">  
      <label for="firstname">First Name: </label>
      <input type="text" class="form-control" name="firstname" value=<%= request.getParameter("firstName")%>>
    </div>  
         
    <div class="form-group"> 
       <label for="lastname">Last Name: </label>  
      <input type="text" class="form-control" name="lastname" value=<%= request.getParameter("lastName")%>>
    </div>  
         
    <div class="form-group"> 
      <label for="email">Email: </label>     
      <input type="email" class="form-control" name="email" value=<%= request.getParameter("email")%>>
    </div>  
         
     <div class="form-group">
      <label for="phone">Phone: </label>    
      <input type="number" class="form-control" name="phone" value=<%= request.getParameter("phone")%>>
    </div> 
    
      <label for="role">Role: </label>   
    <select name="role" class="form-control">
                <c:forEach items="${roleList}" var="item">
                     <option value="${item.id}">${item.name}</option>
                </c:forEach>
    </select>   <br/>    
    <button type="submit" class="btn btn-default">Edit</button>
  </form>
 
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />