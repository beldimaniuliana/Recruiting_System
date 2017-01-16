/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srv.Candidate;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.request.Request;


@WebServlet(name = "DeleteCandidate", urlPatterns = {"/DeleteCandidate"})
public class DeleteCandidate  extends HttpServlet {
    
    @EJB
    Request req;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

           Integer id = Integer.parseInt(request.getParameter("id"));

            req.DeleteCandidate(id);
            response.sendRedirect("GetCandidate"); 
    }  
}
