<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../includes/header.jsp" />
<style><jsp:include page="../css/page.css"/></style>
<style><jsp:include page="../css/left_menu.css"/></style>

<div class="container">
   <div clas="row">
 
    <br><br><br><br><br><br>
    <form class="form-horizontal" role="form" method="post" action="index.php">
            <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">Name</label>
                    <div class="col-sm-10">
                            <input type="text" class="form-control" id="name" name="name" placeholder="First & Last Name" value="">
                    </div>
            </div>
            <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                            <input type="email" class="form-control" id="email" name="email" placeholder="example@domain.com" value="">
                    </div>
            </div>
            <div class="form-group">
                    <label for="message" class="col-sm-2 control-label">Message</label>
                    <div class="col-sm-10">
                            <textarea class="form-control" rows="4" name="message"></textarea>
                    </div>
            </div>
            <div class="form-group">
                    <label for="human" class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                            <input type="text" class="form-control" id="human" name="human" placeholder="Your Answer">
                    </div>
            </div>
            <div class="form-group">
                    <div class="col-sm-10 col-sm-offset-2">
                            <input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
                    </div>
            </div>
            <div class="form-group">
                    <div class="col-sm-10 col-sm-offset-2">
                            <! Will be used to display an alert to the user>
                    </div>
            </div>
    </form>
   </div>
</div>
<jsp:include page="../includes/footer.jsp" />