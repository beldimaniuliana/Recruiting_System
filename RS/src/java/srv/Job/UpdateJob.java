
package srv.Job;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.request.Request;

@WebServlet(name = "UpdateJob", urlPatterns = {"/UpdateJob"})
public class UpdateJob extends HttpServlet {

    @EJB
    Request req;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            int id = Integer.parseInt(request.getParameter("id"));
            
            //String name = request.getParameter("position");
            //to be continue...

            //req.UpdateJob(id, date, no_spot, id_position, id_candidate, id_status);
            response.sendRedirect("GetJob"); 
    }
}
