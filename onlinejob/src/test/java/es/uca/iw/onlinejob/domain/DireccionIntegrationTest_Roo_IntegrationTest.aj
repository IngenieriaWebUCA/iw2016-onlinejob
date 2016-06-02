// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.onlinejob.domain;

import es.uca.iw.onlinejob.domain.Direccion;
import es.uca.iw.onlinejob.domain.DireccionDataOnDemand;
import es.uca.iw.onlinejob.domain.DireccionIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DireccionIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DireccionIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DireccionIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DireccionIntegrationTest: @Transactional;
    
    @Autowired
    DireccionDataOnDemand DireccionIntegrationTest.dod;
    
    @Test
    public void DireccionIntegrationTest.testCountDireccions() {
        Assert.assertNotNull("Data on demand for 'Direccion' failed to initialize correctly", dod.getRandomDireccion());
        long count = Direccion.countDireccions();
        Assert.assertTrue("Counter for 'Direccion' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DireccionIntegrationTest.testFindDireccion() {
        Direccion obj = dod.getRandomDireccion();
        Assert.assertNotNull("Data on demand for 'Direccion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Direccion' failed to provide an identifier", id);
        obj = Direccion.findDireccion(id);
        Assert.assertNotNull("Find method for 'Direccion' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Direccion' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void DireccionIntegrationTest.testFindAllDireccions() {
        Assert.assertNotNull("Data on demand for 'Direccion' failed to initialize correctly", dod.getRandomDireccion());
        long count = Direccion.countDireccions();
        Assert.assertTrue("Too expensive to perform a find all test for 'Direccion', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Direccion> result = Direccion.findAllDireccions();
        Assert.assertNotNull("Find all method for 'Direccion' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Direccion' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DireccionIntegrationTest.testFindDireccionEntries() {
        Assert.assertNotNull("Data on demand for 'Direccion' failed to initialize correctly", dod.getRandomDireccion());
        long count = Direccion.countDireccions();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Direccion> result = Direccion.findDireccionEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Direccion' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Direccion' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DireccionIntegrationTest.testFlush() {
        Direccion obj = dod.getRandomDireccion();
        Assert.assertNotNull("Data on demand for 'Direccion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Direccion' failed to provide an identifier", id);
        obj = Direccion.findDireccion(id);
        Assert.assertNotNull("Find method for 'Direccion' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyDireccion(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Direccion' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DireccionIntegrationTest.testMergeUpdate() {
        Direccion obj = dod.getRandomDireccion();
        Assert.assertNotNull("Data on demand for 'Direccion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Direccion' failed to provide an identifier", id);
        obj = Direccion.findDireccion(id);
        boolean modified =  dod.modifyDireccion(obj);
        Integer currentVersion = obj.getVersion();
        Direccion merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Direccion' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DireccionIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Direccion' failed to initialize correctly", dod.getRandomDireccion());
        Direccion obj = dod.getNewTransientDireccion(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Direccion' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Direccion' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'Direccion' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void DireccionIntegrationTest.testRemove() {
        Direccion obj = dod.getRandomDireccion();
        Assert.assertNotNull("Data on demand for 'Direccion' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Direccion' failed to provide an identifier", id);
        obj = Direccion.findDireccion(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Direccion' with identifier '" + id + "'", Direccion.findDireccion(id));
    }
    
}