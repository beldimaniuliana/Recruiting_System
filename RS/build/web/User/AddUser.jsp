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
     
     <form action="../AddUser" method="POST">
         <br/> <br/>   
    <div class="form-group"> 
      <input type="text" class="form-control" name="username" placeholder="Username">
    </div>
      
    <div class="form-group"> 
      <input type="password" class="form-control" name="password" placeholder="Password">
    </div>  
         
    <div class="form-group">  
      <input type="text" class="form-control" name="firstname" placeholder="First Name">
    </div>  
         
    <div class="form-group">   
      <input type="text" class="form-control" name="lastname" placeholder="Last Name">
    </div>  
         
    <div class="form-group"> 
      <input type="email" class="form-control" name="email" placeholder="email@yahoo.com">
    </div>  
         
     <div class="form-group">
      <input type="number" class="form-control" name="phone" placeholder="Phone">
    </div>      
     
    <select name="role" class="form-control">
                <c:forEach items="${roleList}" var="item">
                     <option value="${item.id}">${item.name}</option>
                </c:forEach>
    </select>   <br/>    
    <button type="submit" class="btn btn-default">Create</button>
  </form>
 
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />