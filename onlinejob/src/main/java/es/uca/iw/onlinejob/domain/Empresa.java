package es.uca.iw.onlinejob.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.validation.constraints.Min;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Empresa {

    /**
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String nombre;

    /**
     */
    @NotNull
    @Size(min = 9, max = 9)
    private String cif;

    /**
     */
    @Size(min = 8, max = 32)
    private String email;

    /**
     */
    @Size(max = 256)
    private String actividad_profesional;

    /**
     */
    @Min(0L)
    private Float num_empleados;

    /**
     */
    @NotNull
    @Size(min = 9)
    private String telefono;

    /**
     */
    @ManyToOne
    private Usuario usuario;

    /**
     */
    @ManyToOne
    private Direccion direccion;

    /**
     */
    @ManyToOne
    private OfertaTrabajo oferta;
}
