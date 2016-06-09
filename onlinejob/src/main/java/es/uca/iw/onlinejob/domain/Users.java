package es.uca.iw.onlinejob.domain;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import es.uca.iw.onlinejob.reference.Sexo;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Users {

    /**
     */
    private Boolean activado = true;

    /**
     */
    @NotNull
    private String apellidos;

    /**
     */
    @NotNull
    @Size(min = 9, max = 9)
    private String dni;

    /**
     */
    @NotNull
    private String email;

    /**
     */
    @NotNull
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date fecha_registro = Calendar.getInstance().getTime();

    public static String sha256(String password) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        digest.update(password.getBytes("UTF-8"));
        byte[] hash = digest.digest();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < hash.length; i++) stringBuffer.append(Integer.toString((hash[i] & 0xff) + 0x100, 16).substring(1));
        return stringBuffer.toString();
    }

    /**
     */
    @NotNull
    private String nombre;

    /**
     */
    @NotNull
    private String password;

    /**
     */
    @NotNull
    @Enumerated
    private Sexo sexo;

    /**
     */
    @NotNull
    @ManyToOne
    private Roles rol;

    /**
     */
    @NotNull
    private String usuario;
}
