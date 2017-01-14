
package srv.Job;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import rs.request.Request;

@WebServlet(name = "AddJob", urlPatterns = {"/AddJob"})
public class AddJob extends HttpServlet {

    @EJB
    Request req;
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            int position = Integer.parseInt(request.getParameter("position"));
            int candidate = Integer.parseInt(request.getParameter("candidate"));
            int status = Integer.parseInt(request.getParameter("status"));
            int spots = Integer.parseInt(request.getParameter("spot"));
            String date = request.getParameter("date");
            
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
             
            try {
                Date startDate = sdf.parse(date);
                req.AddJob(1, sdf.parse(date), spots, position, candidate, status); 
            } catch (ParseException ex) {
                Logger.getLogger(AddJob.class.getName()).log(Level.SEVERE, null, ex);
            }

            request.getSession().setAttribute("msg", "Succesfully inserted");

            response.sendRedirect("GetJob"); 
    }
}
