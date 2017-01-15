/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srv.Candidate;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.request.Request;

/**
 *
 * @author ionut
 */
@WebServlet(name = "DeleteCandidate", urlPatterns = {"/DeleteCandidate"})
public class DeleteCandidate  extends HttpServlet {
    
    Request requestt;
    
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }
     
     
    @Override
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
     
     
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

           Integer id = Integer.parseInt(request.getParameter("id"));

            requestt.DeleteCandidate(id);
            response.sendRedirect("GetCandidate"); 
    }
    
    
}
