package es.uca.iw.onlinejob.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findPerfilsByTitulos", "findPerfilsByTrabajos" })
public class Perfil {

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Titulo> titulos = new HashSet<Titulo>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Trabajo> trabajos = new HashSet<Trabajo>();

    /**
     */
    @NotNull
    @Size(max = 256)
    private String experiencia;
}
