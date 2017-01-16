
package srv.Candidate;

import java.io.IOException;
import java.sql.Blob;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.request.Request;

public class AddCandidate extends HttpServlet {
    
    Request req;
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String firstname = request.getParameter("firstname");
         String lastname = request.getParameter("lastname");
         String CV = request.getParameter("CV");
         
         int id_job = Integer.parseInt(request.getParameter("id"));

        // req.AddCandidate(1, firstname, lastname);
         
         response.sendRedirect("Candidate/Candidate.jsp");
     }
}
