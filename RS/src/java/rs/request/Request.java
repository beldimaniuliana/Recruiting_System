
package rs.request;

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
    public void createUser(Integer id, String username, String password, String firstName, String lastName, String email, int phone, int active, int role);
    public void updateUser(Integer id, String username, String password, String firstName, String lastName, String email, int phone, int active, int role);
    public List<User> getAllUsers();
    public User getUser(Integer userId);   
    public User DeleteUser(Integer id);
    
    //--------- ROLE ----------
     public List<Role> getAllRoles();
     public void createRole(Integer id, String name);
     public void updateRole(Integer id, String name);
     public Role DeleteRole(Integer id);
    //--------- JOB -----------
    void AddJob(Integer id, Date date, int no_spot, int id_position, int id_candidate, int id_status);
    Job DeleteJob(Integer id);
    Job UpdateJob(Integer id, Date date, int no_spot, int id_position, int id_candidate, int id_status);
    public List<Job> getJob();
    //------- POSITION --------
    void AddPosition(Integer id, String name, String requirements);
    Position UpdatePosition(Integer id, String name, String requirements);
    Position DeletePosition(Integer id);
    public List<Position> getPosition();
    //------- CANDIDATE -------
    public void AddCandidate(int id, String firstname, String lastname);
    public Candidate DeleteCandidate(Integer id);
    public List<Candidate> getAllCandidate();
    public List<Candidate> getCandidate();
    public Candidate UpdateCandidate(Integer id, String firstname, String lastname);
    //-------- STATUS ---------
    void AddStatus(Integer id, String name);
    public List<Status> getStatus();
    Status DeleteStatus(Integer id);
    Status UpdateStatus(Integer id, String name);


}
