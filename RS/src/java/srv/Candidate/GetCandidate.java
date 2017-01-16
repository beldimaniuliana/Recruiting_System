
package srv.Candidate;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.entities.Candidate;
import rs.entities.Job;
import rs.request.Request;

@WebServlet(name = "GetCandidate", urlPatterns = {"/GetCandidate"})
public class GetCandidate extends HttpServlet {
    
    @EJB
    Request req;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            List<Candidate> candidateList = req.getCandidate();
            request.getSession().setAttribute("candidateList", candidateList); 
     
            List<Job> jobs = req.getJob();
            request.getSession().setAttribute("jobs", jobs); 
            
            response.sendRedirect("Candidate/Candidate.jsp");
    }   
}
