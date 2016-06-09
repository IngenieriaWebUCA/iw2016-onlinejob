package es.uca.iw.onlinejob.web;
import es.uca.iw.onlinejob.domain.Titulo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/tituloes")
@Controller
@RooWebScaffold(path = "tituloes", formBackingObject = Titulo.class)
@GvNIXWebJQuery
public class TituloController {
}
