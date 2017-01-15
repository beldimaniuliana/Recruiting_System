
package srv.Login;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.request.Request;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    @EJB
    Request req;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        //String submit = request.getParameter("submit");
       
        if(req.checkUser(email, password)==true){
            response.sendRedirect("private/index.jsp");
        }
            
        else{
            request.getSession().setAttribute("msg", "Username and/or password invalid. ");
            response.sendRedirect("auth/login.jsp");
        }
    }

}
