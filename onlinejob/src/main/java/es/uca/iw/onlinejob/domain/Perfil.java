package es.uca.iw.onlinejob.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Past;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Perfil {

    /**
     */
    @Size(max = 256)
    private String trayectoria;

    /**
     */
    private String foto;

    /**
     */
    @Size(min = 3, max = 32)
    private String lista_puesto_trabajo;

    /**
     */
    @NotNull
    @Size(min = 3, max = 32)
    private String titulo_academico;

    /**
     */
    @Size(min = 3, max = 32)
    private String curso_especializacion;

    /**
     */
    @Size(min = 3, max = 32)
    private String idioma;

    /**
     */
    @Size(min = 3, max = 32)
    private String nombre_empresa;

    /**
     */
    @NotNull
    @Past
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha_inicio;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha_fin;

    /**
     */
    @Size(min = 3, max = 32)
    private String puesto_trabajo_desempenado;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "perfil")
    private Set<Demandante> id_perfil = new HashSet<Demandante>();
}
