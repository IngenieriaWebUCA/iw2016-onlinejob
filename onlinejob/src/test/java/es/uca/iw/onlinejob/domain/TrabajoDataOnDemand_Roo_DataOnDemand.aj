// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.onlinejob.domain;

import es.uca.iw.onlinejob.domain.Trabajo;
import es.uca.iw.onlinejob.domain.TrabajoDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect TrabajoDataOnDemand_Roo_DataOnDemand {
    
    declare @type: TrabajoDataOnDemand: @Component;
    
    private Random TrabajoDataOnDemand.rnd = new SecureRandom();
    
    private List<Trabajo> TrabajoDataOnDemand.data;
    
    public Trabajo TrabajoDataOnDemand.getNewTransientTrabajo(int index) {
        Trabajo obj = new Trabajo();
        setNombre(obj, index);
        return obj;
    }
    
    public void TrabajoDataOnDemand.setNombre(Trabajo obj, int index) {
        String nombre = "nombre_" + index;
        obj.setNombre(nombre);
    }
    
    public Trabajo TrabajoDataOnDemand.getSpecificTrabajo(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Trabajo obj = data.get(index);
        Long id = obj.getId();
        return Trabajo.findTrabajo(id);
    }
    
    public Trabajo TrabajoDataOnDemand.getRandomTrabajo() {
        init();
        Trabajo obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Trabajo.findTrabajo(id);
    }
    
    public boolean TrabajoDataOnDemand.modifyTrabajo(Trabajo obj) {
        return false;
    }
    
    public void TrabajoDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Trabajo.findTrabajoEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Trabajo' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Trabajo>();
        for (int i = 0; i < 10; i++) {
            Trabajo obj = getNewTransientTrabajo(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}