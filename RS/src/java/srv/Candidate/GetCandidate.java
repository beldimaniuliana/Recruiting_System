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
import rs.entities.Candidate;
import rs.entities.User;
import rs.request.Request;

/**
 *
 * @author ionut
 */
@WebServlet(name = "GetCandidate", urlPatterns = {"/GetCandidate"})
public class GetCandidate extends HttpServlet {
    
     Request requestt;
     
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
              List<Candidate> candidateList = requestt.getAllCandidate();
              request.getSession().setAttribute("candidateList", candidateList); 
        
             
              response.sendRedirect("Candidate/Candidate.jsp");
    }
     
     
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            doGet(request, response);
   
    }
    
}
