package es.uca.iw.onlinejob.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Demandante {

    /**
     */
    @NotNull
    private int id;

    /**
     */
    @NotNull
    @Size(max = 50)
    private String nombre;

    /**
     */
    @NotNull
    @Size(max = 50)
    private String apellidos;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date f_nacimiento;

    /**
     */
    @NotNull
    private String email;

    /**
     */
    @NotNull
    private String sexo;

    /**
     */
    @NotNull
    private String telefono;

    /**
     */
    @NotNull
    private int id_cv;

    /**
     */
    @NotNull
    private String ciudad;

    /**
     */
    @NotNull
    private String direccion;
}
