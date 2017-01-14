
package srv.Position;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.entities.Position;
import rs.request.Request;

@WebServlet(name = "GetPosition", urlPatterns = {"/GetPosition"})
public class GetPosition extends HttpServlet {

    @EJB
    Request req;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            List<Position> postitions = req.getPosition();
            request.getSession().setAttribute("positions", postitions); 
            
            response.sendRedirect("Position/Position.jsp"); 
    }
}
