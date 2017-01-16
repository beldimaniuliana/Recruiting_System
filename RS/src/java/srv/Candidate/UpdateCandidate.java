
package srv.Candidate;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.request.Request;


@WebServlet(name = "UpdateCandidate", urlPatterns = {"/UpdateCandidate"})
public class UpdateCandidate extends HttpServlet {
    
    @EJB
    Request req;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
     
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String CV = request.getParameter("fileName");
        byte[] input = new byte[1];
        int id_job = Integer.parseInt(request.getParameter("job"));
      
        req.UpdateCandidate(1, firstname, lastname,input , id_job);
        
        response.sendRedirect("GetCandidate");
    }
}
