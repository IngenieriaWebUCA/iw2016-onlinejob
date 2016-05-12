package es.uca.iw.onlinejob.web;
import es.uca.iw.onlinejob.domain.Estadooferta;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import es.uca.iw.onlinejob.domain.EstadoofertaBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;

@RequestMapping("/estadoofertas")
@Controller
@RooWebScaffold(path = "estadoofertas", formBackingObject = Estadooferta.class)
@GvNIXWebJQuery
@GvNIXWebJpaBatch(service = EstadoofertaBatchService.class)
public class EstadoofertaController {
}
