
package srv.Upload;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.request.Request;

@WebServlet(name = "Upload", urlPatterns = {"/Upload"})
public class Upload extends HttpServlet {

    @EJB
    Request req;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            int job = Integer.parseInt(request.getParameter("job"));
            int position = Integer.parseInt(request.getParameter("position"));
            int spot = Integer.parseInt(request.getParameter("spot"));
            
            String fileName = request.getParameter("fileName");
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            
            byte[] input = new byte[1];
            req.AddCandidateToJob(1,firstName, lastName, input, job, spot);
      
            response.sendRedirect("GetJobOffer"); 
    }

}
