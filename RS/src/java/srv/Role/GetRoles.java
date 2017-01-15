/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srv.Role;

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
import rs.request.Request;

/**
 *
 * @author Stefan
 */
@WebServlet(name = "GetRoles", urlPatterns = {"/GetRoles"})
public class GetRoles extends HttpServlet {
 @EJB
 Request requestt;


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              List<Role> roleList = requestt.getAllRoles();
              request.getSession().setAttribute("roleList", roleList);
              response.sendRedirect("Role/Roles.jsp");
      
    }

    
  
   

   
  
}
