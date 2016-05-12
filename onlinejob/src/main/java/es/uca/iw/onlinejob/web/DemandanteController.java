package es.uca.iw.onlinejob.web;
import es.uca.iw.onlinejob.domain.Demandante;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import es.uca.iw.onlinejob.domain.DemandanteBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;

@RequestMapping("/demandantes")
@Controller
@RooWebScaffold(path = "demandantes", formBackingObject = Demandante.class)
@GvNIXWebJQuery
@GvNIXWebJpaBatch(service = DemandanteBatchService.class)
public class DemandanteController {
}
