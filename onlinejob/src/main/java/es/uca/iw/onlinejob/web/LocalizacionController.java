package es.uca.iw.onlinejob.web;
import es.uca.iw.onlinejob.domain.Localizacion;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import es.uca.iw.onlinejob.domain.LocalizacionBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;

@RequestMapping("/localizacions")
@Controller
@RooWebScaffold(path = "localizacions", formBackingObject = Localizacion.class)
@GvNIXWebJQuery
@GvNIXWebJpaBatch(service = LocalizacionBatchService.class)
public class LocalizacionController {
}
