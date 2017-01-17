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
    <h2>Add New User:</h2>
    <form action="../AddUser" method="POST">  
    <div class="form-group"> 
      <label for="username">Username: </label>  
      <input type="text" class="form-control" name="username" placeholder="Username">
    </div>
      
    <div class="form-group"> 
      <label for="password">Password: </label>    
      <input type="password" class="form-control" name="password" placeholder="Password">
    </div>  
         
    <div class="form-group"> 
      <label for="frist_name">First Name: </label>     
      <input type="text" class="form-control" name="firstname" placeholder="First Name">
    </div>  
         
    <div class="form-group">  
      <label for="last_name">Last Name: </label>    
      <input type="text" class="form-control" name="lastname" placeholder="Last Name">
    </div>  
         
    <div class="form-group">
      <label for="email">Email: </label>  
      <input type="email" class="form-control" name="email" placeholder="email@yahoo.com">
    </div>  
         
     <div class="form-group">
      <label for="username">Phone Number: </label>    
      <input type="number" class="form-control" name="phone" placeholder="Phone">
    </div>
        
    <div class="form-group">  
        <label for="role">Username: </label>    
        <select name="role" class="form-control">
                    <c:forEach items="${roleList}" var="item">
                         <option value="${item.id}">${item.name}</option>
                    </c:forEach>
        </select>  
    </div>
        
    <input type="submit" value="Create" class="btn btn-primary">
  </form>
 
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />