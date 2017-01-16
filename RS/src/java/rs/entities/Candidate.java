
package rs.entities;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;


@Entity
@Table(name = "EJB_Candidate")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Candidate.findAll", query = "SELECT c FROM Candidate c")
    , @NamedQuery(name = "Candidate.findById", query = "SELECT c FROM Candidate c WHERE c.id = :id")
    , @NamedQuery(name = "Candidate.findByFirstName", query = "SELECT c FROM Candidate c WHERE c.firstName = :firstName")
    , @NamedQuery(name = "Candidate.findByLastName", query = "SELECT c FROM Candidate c WHERE c.lastName = :lastName")})
public class Candidate implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "first_name")
    private String firstName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "last_name")
    private String lastName;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "CV")
    private byte[] cv;
    @JoinColumn(name = "id_job", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Job idJob;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCandidate")
    private Collection<Job> jobCollection;

    public Candidate() {
    }

    public Candidate(Integer id) {
        this.id = id;
    }

    public Candidate(Integer id, String firstName, String lastName, byte[] cv) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.cv = cv;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public byte[] getCv() {
        return cv;
    }

    public void setCv(byte[] cv) {
        this.cv = cv;
    }

    public Job getIdJob() {
        return idJob;
    }

    public void setIdJob(Job idJob) {
        this.idJob = idJob;
    }

    @XmlTransient
    public Collection<Job> getJobCollection() {
        return jobCollection;
    }

    public void setJobCollection(Collection<Job> jobCollection) {
        this.jobCollection = jobCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Candidate)) {
            return false;
        }
        Candidate other = (Candidate) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "rs.entities.Candidate[ id=" + id + " ]";
    }
    
}
