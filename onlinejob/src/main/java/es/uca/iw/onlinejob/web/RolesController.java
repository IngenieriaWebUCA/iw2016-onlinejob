package es.uca.iw.onlinejob.web;
import es.uca.iw.onlinejob.domain.Roles;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;

@RequestMapping("/roleses")
@Controller
@RooWebScaffold(path = "roleses", formBackingObject = Roles.class)
@GvNIXWebJQuery
public class RolesController {
}
