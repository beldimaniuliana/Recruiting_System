/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srv.Candidate;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.entities.Role;
import rs.entities.Candidate;
import rs.request.Request;

/**
 *
 * @author ionut
 */
@WebServlet(name = "UpdateCandidate", urlPatterns = {"/UpdateCandidate"})
public class UpdateCandidate extends HttpServlet {
    
    Request requestt;
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
               int id = Integer.parseInt(request.getParameter("id"));
              List<Candidate> candidate = requestt.getCandidate();
              

              
              request.getSession().setAttribute("candidate", candidate); 
              response.sendRedirect("Candidate/UpdateUser.jsp");
    }
    
}
