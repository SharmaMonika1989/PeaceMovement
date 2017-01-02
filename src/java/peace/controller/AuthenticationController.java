package peace.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;
import org.springframework.beans.PropertyAccessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.DefaultBindingErrorProcessor;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import peace.dao.UserDAOImpl;
import peace.model.User;
import peace.services.UserServices;

@Controller
public class AuthenticationController {

    @Autowired
    public UserDAOImpl userDAO;
    private UserServices service;

    public void setUserDAO(UserDAOImpl userDAO) {
        this.userDAO = userDAO;
    }

    /**
     * Redirect to sign up page.
     *
     * @param requset
     * @param response
     * @return
     */
  

    @RequestMapping(value = "/signup.wpm", method = RequestMethod.GET)
    public ModelAndView signup(HttpServletRequest requset, HttpServletResponse response) {
        ModelAndView model = new ModelAndView("user/signup");
        User command = new User();
        model.addObject("command", command);
        return model;
    }

    @RequestMapping(value = "/member_login.wpm", method = RequestMethod.GET)
    public ModelAndView Login(HttpServletRequest requset, HttpServletResponse response) {
        ModelAndView model = new ModelAndView("user/member_login");
        User command = new User();
        model.addObject("command", command);

        return model;
    }

    /**
     * Save the user details after the signup form is submitted. Creates a
     * record in User table and sends email to user with Activation link.
     *
     * @param request
     * @param response
     * @param user
     * @return
     */
    @RequestMapping(value = "/saveSignup.wpm", method = RequestMethod.POST)
    public ModelAndView saveSignup(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("command") User command) throws Exception {
        ModelAndView model = new ModelAndView("");
        service = new UserServices();
        String link = new String();

        try {
            link = service.sendActivationMail(command.getEmail());
            link = link.toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();

            model = new ModelAndView("/view/error");
            model.addObject("message", "Unable to send activation mail. Please sign up again.");
            return model;
        }

        command.setCreatedDate(LocalDate.now());
        command.setModifiedDate(LocalDate.now());
        command.setActive(false);
        command.setCardGenerated(false);
        command.setActivationLink(link);
        try {
            userDAO.insertAtSignUp(command);
        } catch (Exception e) {
            e.printStackTrace();
            model = new ModelAndView("/view/error");
            model.addObject("message", "Unable to register. Please try later.");
            return model;
        }
        model = new ModelAndView("user/member_login");
        model.addObject("userObj", command);
        request.setAttribute("message", "Registration Successful. Please check your used email for activation link.");
        return model;
    }

    @RequestMapping(value = "/activateAccount.wpm", method = RequestMethod.GET)
    public ModelAndView activateUser(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("command") User command, @PathParam("link") String link) {
        ModelAndView model = new ModelAndView();

        User user = userDAO.getUserByLink(link);
        if (user != null) {
            model = new ModelAndView("/user/member_login");
            user.setActive(true);
            user.setModifiedDate(LocalDate.now());
            userDAO.updateUserAfterActivation(user);
        } else {
            model = new ModelAndView("/view/error");
            model.addObject("message", "Activation Link is not valid.");
        }
        return model;
    }

    @RequestMapping(value = "/login.wpm", method = RequestMethod.POST)
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response,@ModelAttribute("command") User command) {
        ModelAndView model = new ModelAndView();
       
        User user = userDAO.getUserForLogin(command.getEmail(), command.getPassword());
        
        if (user != null) {
            if (!user.isActive()) {
                model = new ModelAndView("/user/member_login");
                request.setAttribute("message", "Activate your accout using the activation link sent to the email id.");
                return model;
            }if(user.getMemberLevel() == 1){
                HttpSession session = request.getSession();
                session.setAttribute("email", user.getEmail());
                model = new ModelAndView("/admin/admin_home");
                return model;
            }
            model = new ModelAndView("/admin/user_home");
            HttpSession session = request.getSession();
            session.setAttribute("email", user.getEmail());
            session.setAttribute("firstName", user.getfName());
            session.setAttribute("lastName", user.getlName());
            session.setAttribute("phoneNumber", user.getPhoneNumber());
        } else {
            model = new ModelAndView("/user/member_login");
            request.setAttribute("message", "Invalid login credentials.");
            return model;
        }
        return model;
    }
     @RequestMapping(value = "/logout.wpm", method = RequestMethod.GET)
    public ModelAndView logout(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        HttpSession session = request.getSession();
        if(session != null)
            session.invalidate();
        mav.setViewName("redirect:index.wpm?msg=You have successfully logged out.");
        return mav;
    }
    
    
    @RequestMapping(value = "/saveParticipation.wpm", method = RequestMethod.POST)
    public ModelAndView saveParticipation(HttpServletRequest request, @ModelAttribute("command") User command) throws Exception {
        ModelAndView model = new ModelAndView();
        service = new UserServices();
        
        command.setReg_id(service.generateRegId(command.getCity(), command.getState()));
        command.setModifiedDate(LocalDate.now());
        
        try{
            userDAO.updateParticipation(command);
        }catch(Exception e){
            model = new ModelAndView("view/error");
            model.addObject("message", "Unable to save Participation form. Please try later.");
            return model;
        }
        
        HttpSession session = request.getSession();
        session.setAttribute("email", command.getEmail());
        model = new ModelAndView("admin/user_home");
        model.addObject("message", "Registration Successful.");
        return model;
    }
}
