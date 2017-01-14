
package rs.request;

import java.util.List;
import javax.ejb.EJBException;
import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import rs.entities.Position;
import rs.entities.Status;

@Stateful
public class RequestBean implements Request{
    @PersistenceContext
    private EntityManager em;    
    
    //--------- USER ----------
    //--------- ROLE ----------
    //--------- JOB -----------
    //------- POSITION --------
    public void AddPosition(Integer id, String name, String requirements){
        Position position = new Position(id, name, requirements);
        em.persist(position);
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
    //-------- STATUS ---------
    public void AddStatus(Integer id, String name){
        Status status = new Status(id, name);
        em.persist(status);
    }
}
