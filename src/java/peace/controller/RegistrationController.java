package peace.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import peace.dao.UserDAOImpl;

import peace.enums.State;
import peace.model.User;
import peace.services.UserServices;


@Controller
public class RegistrationController {
    
    @Autowired
    public UserDAOImpl userDAO;
    private UserServices services;

    @RequestMapping(value = "/registrationForm.wpm", method = RequestMethod.GET)
    public ModelAndView registrationForm(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView mav = new ModelAndView("user/registration_form");
        services = new UserServices();
        
        ArrayList<String> cityList = services.getCityList();
        
        HttpSession session = request.getSession();
        User command = new User();
        command.setfName((String) session.getAttribute("firstName"));
        command.setlName((String) session.getAttribute("lastName"));
        command.setEmail((String) session.getAttribute("email"));
        command.setPhoneNumber((String) session.getAttribute("phoneNumber"));
        
        mav.addObject("command", command);
        mav.addObject("cityList", cityList);
        mav.addAllObjects(prepareModel());
        return mav;
    }

//    @RequestMapping(value = "/saveParticipation.wpm", method = RequestMethod.POST)
//    public ModelAndView saveParticipation(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("command") User command) {
//        ModelAndView model;
//        
//        command.setReg_id(services.generateRegId(command.getCity(), command.getState()));
//        command.setModifiedDate(LocalDate.now());
//        
//        try{
//            userDAO.insertParticipation(command);
//        }catch(Exception e){
//            model = new ModelAndView("view/error");
//            model.addObject("message", "Unable to save Participation form. Please try later.");
//        }
//        model = new ModelAndView("admin/user_home");
//        model.addObject("message", "Registration Successful.");
//        return model;
//    }
    
    @RequestMapping(value="/saveForm.wpm", method=RequestMethod.POST)
    public ModelAndView saveForm(HttpServletRequest request, HttpServletResponse response){
        System.out.println("HELLO");
        return new ModelAndView("hello");
    }
    
          @RequestMapping(value = "/idcard.wpm", method = RequestMethod.GET)
    public ModelAndView idcard(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/idcard");            
       
        return mav;
    }
    private Map prepareModel() {
        Map model = new HashMap();
        model.put("stateList", State.values());
        return model;
    }
}
