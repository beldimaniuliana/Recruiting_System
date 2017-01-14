
package rs.request;

import javax.ejb.Remote;

@Remote
public interface Request {
    
    //--------- USER ----------
    //--------- ROLE ----------
    //--------- JOB -----------
    //------- POSITION --------
    void AddPosition(Integer id, String name, String requirements);
    //------- CANDIDATE -------
    //-------- STATUS ---------
    void AddStatus(Integer id, String name);
}
