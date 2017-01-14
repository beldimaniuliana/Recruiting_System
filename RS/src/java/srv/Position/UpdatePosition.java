
package srv.Position;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.request.Request;

@WebServlet(name = "UpdatePosition", urlPatterns = {"/UpdatePosition"})
public class UpdatePosition extends HttpServlet {

    @EJB
    Request req;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            int id = Integer.parseInt(request.getParameter("id"));
            
            String name = request.getParameter("position");
            String requirements = request.getParameter("requirements");

            req.UpdatePosition(id, name, requirements);
            response.sendRedirect("GetPosition"); 
    }
}
