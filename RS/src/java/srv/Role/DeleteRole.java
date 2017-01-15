/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srv.Role;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.request.Request;

/**
 *
 * @author Stefan
 */
@WebServlet(name = "DeleteRole", urlPatterns = {"/DeleteRole"})
public class DeleteRole extends HttpServlet {
@EJB
Request requestt;
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
             int id = Integer.parseInt(request.getParameter("id"));

            requestt.DeleteRole(id);
            response.sendRedirect("GetRoles"); 
    }

    

}
