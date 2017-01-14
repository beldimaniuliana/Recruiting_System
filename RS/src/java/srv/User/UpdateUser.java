/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srv.User;

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
@WebServlet(name = "UpdateUser", urlPatterns = {"/UpdateUser"})
public class UpdateUser extends HttpServlet {
 @EJB
 Request requestt;
   
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
              int id = Integer.parseInt(request.getParameter("id"));
              User user = requestt.getUser(id);
              
              List<Role> roleList = requestt.getAllRoles();
              request.getSession().setAttribute("roleList", roleList);
              
              request.getSession().setAttribute("user", user); 
              response.sendRedirect("User/UpdateUser.jsp");
    }

  
  
}
