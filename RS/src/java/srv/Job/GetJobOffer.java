
package srv.Job;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.entities.Job;
import rs.entities.Position;
import rs.entities.Status;
import rs.request.Request;

@WebServlet(name = "GetJobOffer", urlPatterns = {"/GetJobOffer"})
public class GetJobOffer extends HttpServlet {

    @EJB
    Request req;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            List<Job> jobs = req.getJob();
            request.getSession().setAttribute("jobs", jobs); 
            
            List<Position> postitions = req.getPosition();
            request.getSession().setAttribute("positions", postitions); 
            
            List<Status> status = req.getStatus();
            request.getSession().setAttribute("status", status); 
            
            response.sendRedirect("jobs.jsp"); 
    }
}
