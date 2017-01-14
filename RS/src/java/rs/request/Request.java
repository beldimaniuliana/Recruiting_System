
package rs.request;

import java.util.Date;
import java.util.List;
import javax.ejb.Remote;
import rs.entities.Job;
import rs.entities.Position;
import rs.entities.Status;

@Remote
public interface Request {
    
    //--------- USER ----------
    //--------- ROLE ----------
    //--------- JOB -----------
    void AddJob(Integer id, Date date, int no_spot, int id_position, int id_candidate, int id_status);
    public List<Job> getJob();
    //------- POSITION --------
    void AddPosition(Integer id, String name, String requirements);
    Position UpdatePosition(Integer id, String name, String requirements);
    Position DeletePosition(Integer id);
    public List<Position> getPosition();
    //------- CANDIDATE -------
    //-------- STATUS ---------
    void AddStatus(Integer id, String name);
    public List<Status> getStatus();
    Status DeleteStatus(Integer id);
    Status UpdateStatus(Integer id, String name);
}
