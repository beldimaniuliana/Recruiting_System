
package rs.request;

import java.sql.Blob;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.ejb.EJBException;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import rs.entities.Candidate;
import rs.entities.Job;
import rs.entities.Position;
import rs.entities.Role;
import rs.entities.Status;
import rs.entities.User;

@Stateful
public class RequestBean implements Request{
    @PersistenceContext
    private EntityManager em;    
    
    //--------- USER ----------
    public void createUser(Integer id, String username, String password, String firstName, String lastName, String email, int phone, int active, int role){
            User user = new User(id, username, password, firstName, lastName, email, phone, active);
            Role idRole = em.find(Role.class, role);
            user.setIdRole(idRole);
            em.persist(user);
           
    }
    
    public void updateUser(Integer id, String username, String password, String firstName, String lastName, String email, int phone, int active, int role){
            User user= em.find(User.class, id);
    
            user.setUsername(username);
            user.setPassword(password);
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setPhone(phone);
            user.setActive(active);
            Role idRole = em.find(Role.class, role);
            user.setIdRole(idRole);
            em.merge(user);
           
     }
     
    public List<User> getAllUsers(){
          
         List<User> users = null;
         try {
            users = (List<User>) em.createNamedQuery(
                        "User.findAll").getResultList();
            return users;
            
          }catch (Exception ex) {
            throw new EJBException(ex);
        }
    }
    
    public User getUser(Integer userId) {
            User user = em.find(User.class, userId);
            return user;
    }  
     
    public User DeleteUser(Integer id){
        try{
            User user = (User)em.find(User.class, id);
            em.remove(user); 
            return user;
            
        }catch (Exception ex){
            throw new EJBException(ex);
        }
    } 
    
    //--------- ROLE ----------
     public void createRole(Integer id, String name){
           
         Role role = new Role(id,name);
            em.persist(role); 
     }
    
     public Role DeleteRole(Integer id){
         try{
            Role role = (Role)em.find(Role.class, id);
            em.remove(role); 
            return role;
            
        }catch (Exception ex){
            throw new EJBException(ex);
        }
     }
     
     public void updateRole(Integer id, String name){     
            Role role= em.find(Role.class, id);
            role.setName(name);
            em.merge(role);
     
     }
     
     public List<Role> getAllRoles(){
          
         List<Role> roles = null;
         try {
            roles = (List<Role>) em.createNamedQuery(
                        "Role.findAll").getResultList();
            return roles;
            
          }catch (Exception ex) {
            throw new EJBException(ex);
        }
    }
        
    //--------- JOB -----------
    public void AddJob(Integer id, Date date, int no_spot, int id_position, int id_candidate, int id_status) {
        Job job = new Job(id, date, no_spot);
        
        Position idPosition = em.find(Position.class, id_position);
        Candidate idCandidate = em.find(Candidate.class, id_candidate);
        Status idStatus = em.find(Status.class, id_status);
        
        job.setIdPosition(idPosition);
        job.setIdCandidate(idCandidate);
        job.setIdStatus(idStatus);
 
        em.persist(job);
    }
    
    public Job UpdateJob(Integer id, Date date, int no_spot, int id_position, int id_candidate, int id_status){
        Job job = (Job)em.find(Job.class, id);

        job.setDate(date);
        job.setNoSpot(no_spot);
        
        Position idPosition = em.find(Position.class, id_position);
        Candidate idCandidate = em.find(Candidate.class, id_candidate);
        Status idStatus = em.find(Status.class, id_status);
        
        job.setIdPosition(idPosition);
        job.setIdCandidate(idCandidate);
        job.setIdStatus(idStatus);
      
        em.merge(job);
        return job;
    }
    
    public Job DeleteJob(Integer id){
        try{
            Job job = (Job)em.find(Job.class, id);
            em.remove(job); 
            return job;
            
        }catch (Exception ex){
            throw new EJBException(ex);
        }
    }
    
    public List<Job> getJob(){
        List<Job> jobs = null;
        try {
            jobs = (List<Job>) em.createNamedQuery(
                        "Job.findAll").getResultList();
            return jobs;

        }catch (Exception ex){
            throw new EJBException(ex);
        }
    }
    
    //------- POSITION --------
    public void AddPosition(Integer id, String name, String requirements){
        Position position = new Position(id, name, requirements);
        em.persist(position);
    }
    
    public Position UpdatePosition(Integer id, String name, String requirements){
        Position position = (Position)em.find(Position.class, id);

        position.setName(name);
        position.setRequirements(requirements);
      
        em.merge(position);
        return position;
    }
    
    public Position DeletePosition(Integer id){
        try{
            Position position = (Position)em.find(Position.class, id);
            em.remove(position); 
            return position;
            
        }catch (Exception ex){
            throw new EJBException(ex);
        }
    }
    
    public List<Position> getPosition(){
        List<Position> positions = null;
        try {
            positions = (List<Position>) em.createNamedQuery(
                        "Position.findAll").getResultList();
            return positions;

        }catch (Exception ex){
            throw new EJBException(ex);
        }
    }
    //------- CANDIDATE -------
    
    public void AddCandidate(int id, String firstname, String lastname,byte[] cv,int  id_job) {
        Candidate candidate = new Candidate(id, firstname, lastname, cv);
     
        Job idJob = em.find(Job.class, id_job);
        
        candidate.setIdJob(idJob);
        
        em.persist(candidate);
    }
    
    public void AddCandidateToJob(int id, String firstname, String lastname,byte[] cv,int  id_job, int spot) {
        Candidate candidate = new Candidate(id, firstname, lastname, cv);
     
        Job idJob = em.find(Job.class, id_job);
        candidate.setIdJob(idJob);
        
        Job job = (Job)em.find(Job.class, id_job);
        
        job.setNoSpot(spot - 1);
 
        em.persist(candidate);
        
        em.merge(job);
    }

    public Candidate DeleteCandidate(Integer id) {
         try{
            Candidate candidate = (Candidate)em.find(Candidate.class, id);
            em.remove(candidate); 
            return candidate;
            
        }catch (Exception ex){
            throw new EJBException(ex);
        }
    }

    public List<Candidate> getAllCandidate() {        
         List<Candidate> candidate = null;
         try {
            candidate = (List<Candidate>) em.createNamedQuery(
                        "Candidate.findAll").getResultList();
            return candidate;
            
          }catch (Exception ex) {
            throw new EJBException(ex);
        }
    }

    
    public List<Candidate> getCandidate() {
               List<Candidate> candidate = null;
        try {
            candidate = (List<Candidate>) em.createNamedQuery(
                        "Candidate.findAll").getResultList();
            return candidate;

        }catch (Exception ex){
            throw new EJBException(ex);
    }

    }
   
    public Candidate UpdateCandidate(Integer id, String firstname, String lastname) {
        Candidate candidate =em.find(Candidate.class, id);

        candidate.setFirstName(firstname);
        candidate.setLastName(lastname);
      
        em.merge(candidate);
        return candidate;
    }
    //-------- STATUS ---------
    public void AddStatus(Integer id, String name){
        Status status = new Status(id, name);
        em.persist(status);
    }
    
    public List<Status> getStatus(){
        List<Status> listStatus = null;
        try {
            listStatus = (List<Status>) em.createNamedQuery(
                        "Status.findAll").getResultList();
            return listStatus;

        }catch (Exception ex){
            throw new EJBException(ex);
        }
    }
    
    public Status DeleteStatus(Integer id){
        try{
            Status status = em.find(Status.class,id);
            em.remove(status); 
            return status;
            
        }catch (Exception ex){
            throw new EJBException(ex);
        }
    }
    
    public Status UpdateStatus(Integer id, String name){
        try{ 
                Status status = (Status)em.find(Status.class, id);

                status.setName(name);

                em.merge(status);
                
                return status;
           }catch (Exception ex){
                throw new EJBException(ex);
            }
    }
    
    //---------LOGIN------------
    public boolean checkUser(String email,String password){
        
        try{
            
            List<User> users = (List<User>) em.createNamedQuery("User.findByUsername").setParameter("username", email).getResultList();
            
            for (Iterator<User> i = users.iterator();i.hasNext();){
                User user = i.next();
                if (user.getUsername().equals(email) ){
                    if((user.getPassword().equals(password))){
                        return true;
                    }
                    
                }
            }
            
          return false;
        
        }catch (Exception ex){
                throw new EJBException(ex);
            }
        
    }


}
