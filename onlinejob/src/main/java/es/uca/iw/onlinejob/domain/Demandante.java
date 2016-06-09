package es.uca.iw.onlinejob.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "DE_SEQ")
public class Demandante {

    /**
     */
    @ManyToOne
    private Demandante perfil;

    /**
     */
    @OneToOne
    private Users usuario;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "demandante")
    private Set<Inscripcion> inscripciones = new HashSet<Inscripcion>();
}
