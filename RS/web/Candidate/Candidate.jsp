<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="navbar navbar-inverse navbar-fixed-left color">
   <p class="navbar-brand" >Analysis and changes</p><br><br>
  
  <ul class="nav navbar-nav">  
      
   <li><a href="<%=request.getContextPath()%>/GetCandidate">Candidate</a></li>
   <li><a href="AddCandidate.jsp">Register Candidate</a></li>
  </ul>
</div>

<div class="container">
 <div class="row">
     
  <br/><br/><br/><br/>
  <h3>All Registered Candidate</h3> <br/>
         <table class="table table-hover">
                 <th>ID</th>
                 <th>FirstName</th>
                 <th>LastName</th>
                 <c:forEach items="${candidateList}" var="item">
             <tr>
                 <td>${item.id}</td>
                 <td>${item.firstName}</td>
                 <td>${item.lastName}</td>
             
                     <form action="UpdateCandidate.jsp" method="POST">
                         <input type="hidden" name="id" value=${item.id}>
                         <input type="hidden" name="firstName" value=${item.firstName}>
                         <input type="hidden" name="lastName" value=${item.lastName}>
                         <input type="submit" value="Edit" class="btn btn-primary">
                     </form>
                     <form action="../DeleteCandidate" method="POST">
                         <input type="hidden" name="id" value="${item.id}">
                         <input type="submit" value="Delete" class="btn btn-danger">
                     </form>
                 </td>      
                 <td>

                 </td>
             </tr>
             </c:forEach>
         </table>
 </div>
</div>

<jsp:include page="../includes/footer.jsp" />