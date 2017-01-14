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
import rs.request.Request;

/**
 *
 * @author Stefan
 */
@WebServlet(name = "GetRolesList", urlPatterns = {"/GetRolesList"})
public class GetRolesList extends HttpServlet {
 @EJB
 Request requestt;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }


  
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              List<Role> roleList = requestt.getAllRoles();
              request.getSession().setAttribute("roleList", roleList);
              response.sendRedirect("User/AddUser.jsp");
      
    }

    
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
