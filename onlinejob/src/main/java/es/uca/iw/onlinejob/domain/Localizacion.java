package es.uca.iw.onlinejob.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Localizacion {

    /**
     */
    @NotNull
    private int id;

    /**
     */
    @NotNull
    private int id_empresa;

    /**
     */
    @NotNull
    @Size(max = 15)
    private String nombre;

    /**
     */
    @NotNull
    @Size(max = 15)
    private String direccion;

    /**
     */
    @NotNull
    @Size(max = 15)
    private String telefono;

    /**
     */
    @NotNull
    @Size(max = 15)
    private String ciudad;
}
