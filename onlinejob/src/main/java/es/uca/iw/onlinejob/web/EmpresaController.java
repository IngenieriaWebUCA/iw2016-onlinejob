package es.uca.iw.onlinejob.web;
import es.uca.iw.onlinejob.domain.Empresa;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import es.uca.iw.onlinejob.domain.EmpresaBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;

@RequestMapping("/empresas")
@Controller
@RooWebScaffold(path = "empresas", formBackingObject = Empresa.class)
@GvNIXWebJQuery
@GvNIXWebJpaBatch(service = EmpresaBatchService.class)
public class EmpresaController {
}
