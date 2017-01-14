
package srv.Position;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.entities.Position;
import rs.request.Request;

@WebServlet(name = "AddPosition", urlPatterns = {"/AddPosition"})
public class AddPosition extends HttpServlet {

    @EJB
    Request req;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            String position = request.getParameter("position");
            String requirement = request.getParameter("requirements");
            
            req.AddPosition(1, position, requirement); 
  
            request.getSession().setAttribute("msg", "Succesfully inserted: " + position + requirement);

            response.sendRedirect("Position/Position.jsp"); 
    }
}
