package es.uca.iw.onlinejob.web;
import es.uca.iw.onlinejob.domain.Trabajo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/trabajoes")
@Controller
@RooWebScaffold(path = "trabajoes", formBackingObject = Trabajo.class)
@GvNIXWebJQuery
public class TrabajoController {
}
