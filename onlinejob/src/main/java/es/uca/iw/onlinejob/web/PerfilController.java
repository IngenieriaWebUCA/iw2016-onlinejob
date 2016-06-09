package es.uca.iw.onlinejob.web;
import es.uca.iw.onlinejob.domain.Perfil;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/perfils")
@Controller
@RooWebScaffold(path = "perfils", formBackingObject = Perfil.class)
@RooWebFinder
@GvNIXWebJQuery
public class PerfilController {
}
