
package rs.request;

import java.util.List;
import javax.ejb.Remote;
import rs.entities.Position;


@Remote
public interface Request {
    
    //--------- USER ----------
    //--------- ROLE ----------
    //--------- JOB -----------
    //------- POSITION --------
    void AddPosition(Integer id, String name, String requirements);
    public List<Position> getPosition();
    //------- CANDIDATE -------
    //-------- STATUS ---------
    void AddStatus(Integer id, String name);
}
