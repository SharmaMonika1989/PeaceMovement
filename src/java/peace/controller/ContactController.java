
package peace.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import peace.dao.ContactDAO;
import peace.domain.Contact;
@Controller
public class ContactController {
    @RequestMapping(value = "/contact.wpm", method = RequestMethod.GET)
    public ModelAndView prepareContactForm(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/contact");
        Contact command = new Contact();
        mav.addObject("command", command);
       // mav.addAllObjects(prepareModel());
        return mav;
    }
    
    @RequestMapping(value = "/saveContact.wpm", method = RequestMethod.POST)
    public ModelAndView saveContactForm(@ModelAttribute("command") Contact command, HttpServletRequest request) throws IOException {
        ModelAndView mav = new ModelAndView();
        contactDAO.save(command);
        mav.setViewName("redirect:contact.wpm?msg=Contact saved Successfully");
        return mav;
    }

    @RequestMapping(value = "/feedback.wpm", method = RequestMethod.GET)
    public ModelAndView showContact(HttpSession session) {
        ModelAndView mav = new ModelAndView("admin/feed_back");
        Contact command = new Contact();
        mav.addObject("command", command);
        mav.addAllObjects(prepareModel());
        return mav;
    }

    

   @RequestMapping(value = "/deleteContact.wpm")
    public String deleteContact(@RequestParam("contactId") Integer contactId, HttpServletRequest request) {
        //Contact id = contactDAO.findById(contactId);
      
        
        contactDAO.delete(contactId);
        try {
            return "redirect:feedback.wpm?msg=Comment deleted successfully";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:feedback.wpm?msg=Comment not found";
        }
    }
    private Map prepareModel() {
        Map model = new HashMap();
        model.put("contactList", contactDAO.findAll());
        return model;
    }
    @Autowired
    ContactDAO contactDAO;
}
