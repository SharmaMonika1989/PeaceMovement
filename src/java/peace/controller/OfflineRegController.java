
package peace.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OfflineRegController {
     @RequestMapping(value = "/participation_mgmt.wpm", method = RequestMethod.GET)
    public ModelAndView founderMessage(HttpSession session) {
        ModelAndView mav = new ModelAndView("admin/participation_mgmt");
        return mav;
    } 
}
