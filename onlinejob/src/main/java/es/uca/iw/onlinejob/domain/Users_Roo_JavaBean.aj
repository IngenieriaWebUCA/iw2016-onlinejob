// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.onlinejob.domain;

import es.uca.iw.onlinejob.domain.Roles;
import es.uca.iw.onlinejob.domain.Users;
import es.uca.iw.onlinejob.reference.Sexo;
import java.util.Date;

privileged aspect Users_Roo_JavaBean {
    
    public Boolean Users.getActivado() {
        return this.activado;
    }
    
    public void Users.setActivado(Boolean activado) {
        this.activado = activado;
    }
    
    public String Users.getApellidos() {
        return this.apellidos;
    }
    
    public void Users.setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }
    
    public String Users.getDni() {
        return this.dni;
    }
    
    public void Users.setDni(String dni) {
        this.dni = dni;
    }
    
    public String Users.getEmail() {
        return this.email;
    }
    
    public void Users.setEmail(String email) {
        this.email = email;
    }
    
    public Date Users.getFecha_registro() {
        return this.fecha_registro;
    }
    
    public void Users.setFecha_registro(Date fecha_registro) {
        this.fecha_registro = fecha_registro;
    }
    
    public String Users.getNombre() {
        return this.nombre;
    }
    
    public void Users.setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String Users.getPassword() {
        return this.password;
    }
    
    public void Users.setPassword(String password) {
        this.password = password;
    }
    
    public Sexo Users.getSexo() {
        return this.sexo;
    }
    
    public void Users.setSexo(Sexo sexo) {
        this.sexo = sexo;
    }
    
    public Roles Users.getRol() {
        return this.rol;
    }
    
    public void Users.setRol(Roles rol) {
        this.rol = rol;
    }
    
    public String Users.getUsuario() {
        return this.usuario;
    }
    
    public void Users.setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
}
