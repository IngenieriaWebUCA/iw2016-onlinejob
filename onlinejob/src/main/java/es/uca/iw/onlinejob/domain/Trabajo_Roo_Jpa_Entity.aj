// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.onlinejob.domain;

import es.uca.iw.onlinejob.domain.Trabajo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Trabajo_Roo_Jpa_Entity {
    
    declare @type: Trabajo: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Trabajo.id;
    
    @Version
    @Column(name = "version")
    private Integer Trabajo.version;
    
    public Long Trabajo.getId() {
        return this.id;
    }
    
    public void Trabajo.setId(Long id) {
        this.id = id;
    }
    
    public Integer Trabajo.getVersion() {
        return this.version;
    }
    
    public void Trabajo.setVersion(Integer version) {
        this.version = version;
    }
    
}
