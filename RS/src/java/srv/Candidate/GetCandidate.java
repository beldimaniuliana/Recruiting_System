
package srv.Candidate;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.entities.Candidate;
import rs.request.Request;

@WebServlet(name = "GetCandidate", urlPatterns = {"/GetCandidate"})
public class GetCandidate extends HttpServlet {
    
     Request req;
     
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            List<Candidate> candidateList = req.getAllCandidate();
            request.getSession().setAttribute("candidateList", candidateList); 
        
            response.sendRedirect("Candidate/Candidate.jsp");
    }   
}
