package es.uca.iw.onlinejob.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.Enumerated;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import es.uca.iw.onlinejob.reference.Rol;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Usuario {

    /**
     */
    @NotNull
    @Size(min = 3, max = 30)
    private String username;

    /**
     */
    @NotNull
    @Size(min = 8, max = 30)
    private String password;

    /**
     */
    @NotNull
    @Past
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fechaRegistro;

    /**
     */
    @Size(min = 8, max = 32)
    private String email;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "usuario")
    private Set<Empresa> id_usuario = new HashSet<Empresa>();

    /**
     */
    @NotNull
    @Enumerated
    private Rol rol;

    /**
     */
    @Size(max = 2)
    private String enabled;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "usuario")
    private Set<Demandante> id_demandante = new HashSet<Demandante>();

}
