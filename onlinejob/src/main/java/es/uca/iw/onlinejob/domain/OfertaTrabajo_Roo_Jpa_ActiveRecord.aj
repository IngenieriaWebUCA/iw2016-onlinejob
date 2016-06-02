// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.onlinejob.domain;

import es.uca.iw.onlinejob.domain.OfertaTrabajo;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect OfertaTrabajo_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager OfertaTrabajo.entityManager;
    
    public static final List<String> OfertaTrabajo.fieldNames4OrderClauseFilter = java.util.Arrays.asList("tipologia_contrato", "sueldo_bruto", "fecha_inicio", "num_vacantes", "perfil", "formacion", "experiencia_previa", "estado_empleo", "id_ofertaEmpresa", "id_oferta_demandante", "nombre");
    
    public static final EntityManager OfertaTrabajo.entityManager() {
        EntityManager em = new OfertaTrabajo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long OfertaTrabajo.countOfertaTrabajoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM OfertaTrabajo o", Long.class).getSingleResult();
    }
    
    public static List<OfertaTrabajo> OfertaTrabajo.findAllOfertaTrabajoes() {
        return entityManager().createQuery("SELECT o FROM OfertaTrabajo o", OfertaTrabajo.class).getResultList();
    }
    
    public static List<OfertaTrabajo> OfertaTrabajo.findAllOfertaTrabajoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM OfertaTrabajo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, OfertaTrabajo.class).getResultList();
    }
    
    public static OfertaTrabajo OfertaTrabajo.findOfertaTrabajo(Long id) {
        if (id == null) return null;
        return entityManager().find(OfertaTrabajo.class, id);
    }
    
    public static List<OfertaTrabajo> OfertaTrabajo.findOfertaTrabajoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM OfertaTrabajo o", OfertaTrabajo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<OfertaTrabajo> OfertaTrabajo.findOfertaTrabajoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM OfertaTrabajo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, OfertaTrabajo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void OfertaTrabajo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void OfertaTrabajo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            OfertaTrabajo attached = OfertaTrabajo.findOfertaTrabajo(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void OfertaTrabajo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void OfertaTrabajo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public OfertaTrabajo OfertaTrabajo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        OfertaTrabajo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
