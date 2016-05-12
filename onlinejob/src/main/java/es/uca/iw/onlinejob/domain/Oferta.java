package es.uca.iw.onlinejob.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Oferta {

    /**
     */
    @NotNull
    private int id;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date f_inicio;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date f_final;

    /**
     */
    @NotNull
    private int id_estadooferta;

    /**
     */
    @NotNull
    private String titulo;

    /**
     */
    @NotNull
    private String t_puesto;

    /**
     */
    @NotNull
    private String t_contrato;

    /**
     */
    private int sueldo;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date f_inicio_contrato;

    /**
     */
    @NotNull
    private int n_vacantes;

    /**
     */
    @NotNull
    private String perfil;

    /**
     */
    @NotNull
    private int id_empresa;

    /**
     */
    @NotNull
    private int id_localizacion;

    /**
     */
    @NotNull
    private String nombre;
}
