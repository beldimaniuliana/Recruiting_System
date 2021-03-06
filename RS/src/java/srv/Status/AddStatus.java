
package srv.Status;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.request.Request;

@WebServlet(name = "AddStatus", urlPatterns = {"/AddStatus"})
public class AddStatus extends HttpServlet {

    @EJB
    Request req;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            String status = request.getParameter("status");
            
            req.AddStatus(1, status); 
  
            request.getSession().setAttribute("msg", "Succesfully inserted: " + status);

            response.sendRedirect("GetStatus"); 
    }

}
