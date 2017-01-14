/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package srv.Status;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.entities.Status;
import rs.request.Request;

/**
 *
 * @author Florin
 */
@WebServlet(name = "GetStatus", urlPatterns = {"/GetStatus"})
public class GetStatus extends HttpServlet {
    @EJB
    Request req;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Status> list_status = req.getStatus();
        request.getSession().setAttribute("listStatus", list_status);
        
        response.sendRedirect("Status/Status.jsp"); 
    }

   
 

}
