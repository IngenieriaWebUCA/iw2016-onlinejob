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
import es.uca.iw.onlinejob.reference.EstadoOferta;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Demandante {

    /**
     */
    @NotNull
    @Size(min = 3)
    private String dni;

    /**
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String nombre;

    /**
     */
    @NotNull
    @Past
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha_nacimiento;

    /**
     */
    @NotNull
    private String sexo;

    /**
     */
    @NotNull
    private String direccion;

    /**
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String email;

    /**
     */
    @NotNull
    private String telefono;

    /**
     */
    @Enumerated
    private EstadoOferta estado;

    /**
     */
    @ManyToOne
    private OfertaTrabajo ofertademandante;

    /**
     */
    @ManyToOne
    private Perfil perfil;

    /**
     */
    @ManyToOne
    private Usuario usuario;

}
