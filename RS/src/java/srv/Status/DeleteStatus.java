
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

@WebServlet(name = "DeleteStatus", urlPatterns = {"/DeleteStatus"})
public class DeleteStatus extends HttpServlet {

    @EJB
    Request req;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            
            req.DeleteStatus(id);
  
            request.getSession().setAttribute("msg", "Succesfully deleted: " + name);

            response.sendRedirect("GetStatus"); 
    }

}
