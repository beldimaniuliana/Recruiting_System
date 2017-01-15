<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/header.jsp" />

<form action="../Upload" method="Post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<%= request.getParameter("position")%>">

    <div class="form-group">
      <label for="first_name">First name</label>
      <input type="text" class="form-control" name="first_name" placeholder="First name">
    </div>  
    
    <div class="form-group">
      <label for="last_name">Last name</label>
      <input type="text" class="form-control" name="last_name" placeholder="Last name">
    </div> 
      
     <div class="form-group">
        <label for="fileName">Select file to upload:</label>
        <input type="file" name="fileName">
    </div>
    
    <button type="submit" class="btn btn-primary">Upload</button>
  </form>


<jsp:include page="../includes/footer.jsp" />
