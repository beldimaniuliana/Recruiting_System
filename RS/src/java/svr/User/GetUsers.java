/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package svr.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.entities.Role;
import rs.entities.User;
import rs.request.Request;

/**
 *
 * @author Stefan
 */
@WebServlet(name = "GetUsers", urlPatterns = {"/GetUsers"})
public class GetUsers extends HttpServlet {
 @EJB
 Request requestt;
    
    
 

  
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
              List<User> userList = requestt.getAllUsers();
              request.getSession().setAttribute("userList", userList); 
        
             
              response.sendRedirect("User/User.jsp");
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            doGet(request, response);
              
        
        
    }

 

}
