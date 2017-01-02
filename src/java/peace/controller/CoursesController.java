
package peace.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import peace.domain.Contact;

@Controller
public class CoursesController {
     @RequestMapping(value = "/tm.wpm", method = RequestMethod.GET)
    public ModelAndView TM(HttpSession session) {
        ModelAndView mav = new ModelAndView("courses/tm");
        Contact command = new Contact();
        mav.addObject("command", command);
       // mav.addAllObjects(prepareModel());
        return mav;
    }
        @RequestMapping(value = "/panchkarma.wpm", method = RequestMethod.GET)
    public ModelAndView panchkarma(HttpSession session) {
        ModelAndView mav = new ModelAndView("courses/panchkarma");
        Contact command = new Contact();
        mav.addObject("command", command);
       // mav.addAllObjects(prepareModel());
        return mav;
    }
    
    
    
    
    //services 
          @RequestMapping(value = "/siddhi_services.wpm", method = RequestMethod.GET)
    public ModelAndView siddhiServices(HttpSession session) {
        ModelAndView mav = new ModelAndView("services/siddhi_services");
        Contact command = new Contact();
        mav.addObject("command", command);
       // mav.addAllObjects(prepareModel());
        return mav;
    }
           @RequestMapping(value = "/tm_services.wpm", method = RequestMethod.GET)
    public ModelAndView tmServices(HttpSession session) {
        ModelAndView mav = new ModelAndView("services/tm_services");
        Contact command = new Contact();
        mav.addObject("command", command);
       // mav.addAllObjects(prepareModel());
        return mav;
    }
}
