<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="includes/header.jsp" />

<form action="Upload" method="GET" enctype="multipart/form-data">
        
    <input type="hidden" name="job" value="<%= request.getParameter("job")%>">
    
    <input type="hidden" name="position" value="<%= request.getParameter("position")%>">
    
    <input type="hidden" name="position_name" value="<%= request.getParameter("position_name")%>">
    
    <input type="hidden" name="spot" value="<%= request.getParameter("spot")%>">

    <div class="form-group">
      <label for="firstName">First name</label>
      <input type="text" class="form-control" name="firstName" placeholder="First name">
    </div>  
    
    <div class="form-group">
      <label for="lastName">Last name</label>
      <input type="text" class="form-control" name="lastName" placeholder="Last name">
    </div> 
      
    <div class="form-group">
        <label for="fileName">Select file to upload:</label>
        <input type="file" name="fileName">
    </div>
    
    <button type="submit" class="btn btn-primary">Upload</button>
    
  </form>

<jsp:include page="includes/footer.jsp" />
