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
     
     <form action="../UpdateUserDo" method="POST">
         <br/> <br/>   
     <div class="form-group"> 
      <input type="hidden" class="form-control" name="id" value=${user.id}>
    </div>     
         
    <div class="form-group"> 
      <input type="text" class="form-control" name="username" value=${user.username}>
    </div>
      
    <div class="form-group"> 
      <input type="password" class="form-control" name="password" value=${user.password}>
    </div>  
         
    <div class="form-group">  
      <input type="text" class="form-control" name="firstname" value=${user.firstName}>
    </div>  
         
    <div class="form-group">   
      <input type="text" class="form-control" name="lastname" value=${user.lastName}>
    </div>  
         
    <div class="form-group"> 
      <input type="email" class="form-control" name="email" value=${user.email}>
    </div>  
         
     <div class="form-group">
      <input type="number" class="form-control" name="phone" value=${user.phone}>
    </div>      
     
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