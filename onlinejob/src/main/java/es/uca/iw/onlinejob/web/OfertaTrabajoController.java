package es.uca.iw.onlinejob.web;
import es.uca.iw.onlinejob.domain.OfertaTrabajo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/ofertatrabajoes")
@Controller
@RooWebScaffold(path = "ofertatrabajoes", formBackingObject = OfertaTrabajo.class)
@RooWebFinder
@GvNIXWebJQuery
public class OfertaTrabajoController {
}
