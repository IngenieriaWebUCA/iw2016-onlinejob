package es.uca.iw.onlinejob.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Empresa {

    /**
     */
    @Size(max = 30)
    private String nombre;

    /**
     */
    @NotNull
    private int id;

    /**
     */
    @NotNull
    @Size(max = 15)
    private String cif;

    /**
     */
    @NotNull
    private int n_trabajadores;

    /**
     */
    @NotNull
    @Size(max = 15)
    private String email;

    /**
     */
    @NotNull
    private int id_localizacion;

    /**
     */
    @NotNull
    @Size(max = 15)
    private String actividad;

    /**
     */
    @NotNull
    @Size(max = 15)
    private String descripcion;
}
