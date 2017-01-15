/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srv.Candidate;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.request.Request;

/**
 *
 * @author ionut
 */
public class AddCandidate extends HttpServlet {
    
    Request requestt;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }
    
    
    @Override
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
     
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String firstname = request.getParameter("firstname");
         String lastname = request.getParameter("lastname");
         
         int id = Integer.parseInt(request.getParameter("id"));
         
         requestt.AddCandidate(1, firstname, lastname);
         
         response.sendRedirect("Candidate/Candidate.jsp");
         
     }
    
}
