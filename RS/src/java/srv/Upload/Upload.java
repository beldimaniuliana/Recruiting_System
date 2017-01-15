
package srv.Upload;

import java.io.IOException;
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            //int id = Integer.parseInt(request.getParameter("id"));
            //String filename = request.getParameter("fileName");
            
            //String first_name = request.getParameter("first_name");
            //String last_name = request.getParameter("last_name");
            
            //req.AddPosition(1, position, requirement); 
  
            
            response.sendRedirect("jobs.jsp"); 
    }
}
