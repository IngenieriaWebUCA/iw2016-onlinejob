// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.onlinejob.domain;

import es.uca.iw.onlinejob.domain.Empresa;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Empresa_Roo_Finder {
    
    public static Long Empresa.countFindEmpresasByActividadLike(String actividad) {
        if (actividad == null || actividad.length() == 0) throw new IllegalArgumentException("The actividad argument is required");
        actividad = actividad.replace('*', '%');
        if (actividad.charAt(0) != '%') {
            actividad = "%" + actividad;
        }
        if (actividad.charAt(actividad.length() - 1) != '%') {
            actividad = actividad + "%";
        }
        EntityManager em = Empresa.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Empresa AS o WHERE LOWER(o.actividad) LIKE LOWER(:actividad)", Long.class);
        q.setParameter("actividad", actividad);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Empresa.countFindEmpresasByNombreLike(String nombre) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        nombre = nombre.replace('*', '%');
        if (nombre.charAt(0) != '%') {
            nombre = "%" + nombre;
        }
        if (nombre.charAt(nombre.length() - 1) != '%') {
            nombre = nombre + "%";
        }
        EntityManager em = Empresa.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Empresa AS o WHERE LOWER(o.nombre) LIKE LOWER(:nombre)", Long.class);
        q.setParameter("nombre", nombre);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByActividadLike(String actividad) {
        if (actividad == null || actividad.length() == 0) throw new IllegalArgumentException("The actividad argument is required");
        actividad = actividad.replace('*', '%');
        if (actividad.charAt(0) != '%') {
            actividad = "%" + actividad;
        }
        if (actividad.charAt(actividad.length() - 1) != '%') {
            actividad = actividad + "%";
        }
        EntityManager em = Empresa.entityManager();
        TypedQuery<Empresa> q = em.createQuery("SELECT o FROM Empresa AS o WHERE LOWER(o.actividad) LIKE LOWER(:actividad)", Empresa.class);
        q.setParameter("actividad", actividad);
        return q;
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByActividadLike(String actividad, String sortFieldName, String sortOrder) {
        if (actividad == null || actividad.length() == 0) throw new IllegalArgumentException("The actividad argument is required");
        actividad = actividad.replace('*', '%');
        if (actividad.charAt(0) != '%') {
            actividad = "%" + actividad;
        }
        if (actividad.charAt(actividad.length() - 1) != '%') {
            actividad = actividad + "%";
        }
        EntityManager em = Empresa.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Empresa AS o WHERE LOWER(o.actividad) LIKE LOWER(:actividad)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Empresa> q = em.createQuery(queryBuilder.toString(), Empresa.class);
        q.setParameter("actividad", actividad);
        return q;
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByNombreLike(String nombre) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        nombre = nombre.replace('*', '%');
        if (nombre.charAt(0) != '%') {
            nombre = "%" + nombre;
        }
        if (nombre.charAt(nombre.length() - 1) != '%') {
            nombre = nombre + "%";
        }
        EntityManager em = Empresa.entityManager();
        TypedQuery<Empresa> q = em.createQuery("SELECT o FROM Empresa AS o WHERE LOWER(o.nombre) LIKE LOWER(:nombre)", Empresa.class);
        q.setParameter("nombre", nombre);
        return q;
    }
    
    public static TypedQuery<Empresa> Empresa.findEmpresasByNombreLike(String nombre, String sortFieldName, String sortOrder) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        nombre = nombre.replace('*', '%');
        if (nombre.charAt(0) != '%') {
            nombre = "%" + nombre;
        }
        if (nombre.charAt(nombre.length() - 1) != '%') {
            nombre = nombre + "%";
        }
        EntityManager em = Empresa.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Empresa AS o WHERE LOWER(o.nombre) LIKE LOWER(:nombre)");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Empresa> q = em.createQuery(queryBuilder.toString(), Empresa.class);
        q.setParameter("nombre", nombre);
        return q;
    }
    
}
