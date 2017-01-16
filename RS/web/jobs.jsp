<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./includes/header.jsp" />

<h2>All Jobs</h2>
        <p>Here are all jobs</p>            
        <table class="table table-hover">
          <thead>
            <tr>
              <th>Date</th>
              <th>Number of spots</th>
              <th>Position</th>
              <th>Status</th>
              <th></th>
            </tr>
          </thead>
           
          <tbody>
          <c:forEach items="${jobs}" var="item">    
            <tr>
                <td>${item.date}</td>
                <td>${item.noSpot}</td>
                <td>${item.idPosition.name}</td>
                <td>${item.idStatus.name}</td>
                <td>
                    <form action="AplyJob.jsp" method="POST">
                        <input type="hidden" name="job" value=${item.id}>
                        <input type="hidden" name="position" value=${item.idPosition.id}>
                        <input type="hidden" name="position_name" value=${item.idPosition.name}>
                        <input type="hidden" name="spot" value=${item.noSpot}>
                        <input type="submit" name="submit" value="Apply" class="btn btn-primary">
                    </form>
                </td>
            </tr>
          </c:forEach>
          </tbody>
       
        </table>
        
<jsp:include page="./includes/footer.jsp" />