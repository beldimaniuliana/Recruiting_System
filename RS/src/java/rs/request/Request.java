
package rs.request;

import java.sql.Blob;
import java.util.Date;
import java.util.List;
import javax.ejb.Remote;
import rs.entities.Candidate;
import rs.entities.Job;
import rs.entities.Position;
import rs.entities.Role;
import rs.entities.Status;
import rs.entities.User;

@Remote
public interface Request {
    
    //--------- USER ----------
    void createUser(Integer id, String username, String password, String firstName, String lastName, String email, int phone, int active, int role);
    void updateUser(Integer id, String username, String password, String firstName, String lastName, String email, int phone, int active, int role);
    List<User> getAllUsers();
    User getUser(Integer userId);   
    User DeleteUser(Integer id);
    //--------- ROLE ----------
    List<Role> getAllRoles();
    void createRole(Integer id, String name);
    void updateRole(Integer id, String name);
    Role DeleteRole(Integer id);
    //--------- JOB -----------
    void AddJob(Integer id, Date date, int no_spot, int id_position, int id_candidate, int id_status);
    Job DeleteJob(Integer id);
    Job UpdateJob(Integer id, Date date, int no_spot, int id_position, int id_candidate, int id_status);
    public List<Job> getJob();
    //------- POSITION --------
    void AddPosition(Integer id, String name, String requirements);
    Position UpdatePosition(Integer id, String name, String requirements);
    Position DeletePosition(Integer id);
    List<Position> getPosition();
    //------- CANDIDATE -------
    void AddCandidate(int id,String firstname, String lastname, byte[] cv, int id_job);
    void AddCandidateToJob(int id,String firstname, String lastname, byte[] cv, int id_job, int spot);
    Candidate DeleteCandidate(Integer id);
    List<Candidate> getAllCandidate();
    List<Candidate> getCandidate();
    Candidate UpdateCandidate(Integer id, String firstname, String lastname);
    //-------- STATUS ---------
    void AddStatus(Integer id, String name);
    public List<Status> getStatus();
    Status DeleteStatus(Integer id);
    Status UpdateStatus(Integer id, String name);
    //--------- LOGIN ----------
    boolean checkUser(String email, String password);
    //-------- UPLOAD ----------
}
