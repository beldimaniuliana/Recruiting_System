<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color top">
   <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">  
      
   <li><a href="#">Candidate Report</a></li>
   
  </ul>
</div>

<div class="container">
 <div class="row">
     
  <h2>Add new Candidate:</h2>   
  <form action="../AddCandidate" method="POST">
       
    <div class="form-group">
      <label for="firstname">First name:</label> 
      <input type="text" class="form-control" name="firstname" placeholder="First Name">
    </div>  
         
    <div class="form-group">   
      <label for="lastname">Last name:</label> 
      <input type="text" class="form-control" name="lastname" placeholder="Last Name">
    </div>  
      
    <div class="form-group">
      <label for="jobs">Job</label>
        <select class="form-control" name="job">
            <c:forEach items="${jobs}" var="item">
                <option value=${item.id}>${item.id}</option>
            </c:forEach>
        </select>
    </div>  
            
    <div class="form-group">
        <label for="fileName">Select file to upload:</label>
        <input type="file" name="fileName">
    </div>        
            
    <input type="submit" class="btn btn-default" value="Create">
    
    </form>   
            
        <h2>All Candidates</h2>
        <p>Here are all candidates</p>            
        <table class="table table-hover">
          <thead>
            <tr>
               <th>ID</th>
              <th>First Name</th>
              <th>Last Name</th>
              <th>CV</th>
              <th>Job</th>
              <th>Delete</th>
              <th>Update</th>
            </tr>
          </thead>
           
          <tbody>
          <c:forEach items="${candidateList}" var="item">    
            <tr>
                <td>${item.id}</td>
                <td>${item.firstName}</td>
                <td>${item.lastName}</td>
                <td>CV</td>
                <td>${item.idJob.idPosition.name}</td>
                <td>
                    <form action="../DeleteCandidate" method="POST">
                        <input type="hidden" name="id" value="${item.id}">
                        <input type="submit" value="Delete" class="btn btn-danger">
                    </form>         
                </td>
                <td>
                    <form action="UpdateCandidate.jsp" method="POST">
                        <input type="hidden" name="id" value=${item.id}>
                        <input type="hidden" name="firstName" value=${item.firstName}>
                        <input type="hidden" name="lastName" value=${item.lastName}>
                        <input type="hidden" name="id_job" value=${item.idJob}>
                        <input type="submit" value="Edit" class="btn btn-primary">
                    </form>
                </td>
            </tr>
          </c:forEach>
          </tbody>
       
        </table>                       
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />