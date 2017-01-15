
package srv.auth;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import rs.request.Request;

public class Logout extends HttpServlet {
     
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //String logout = request.getParameter("logout");
        
        
        //if (logout != null) {
        HttpSession session = request.getSession(false);
        
            if (request.getSession(false) == session ) {
           session.invalidate();
           response.sendRedirect("index.jsp");
           return;
        }
        
    }
  
    



}
