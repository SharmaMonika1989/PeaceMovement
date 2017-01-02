package peace.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    // Left Menus
    @RequestMapping(value = "/index.wpm", method = RequestMethod.GET)
    public ModelAndView prepareIndexForm(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/index");

        return mav;
    }

    @RequestMapping(value = "/introduction.wpm", method = RequestMethod.GET)
    public ModelAndView introdution(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/introduction");
        return mav;
    }
    
      @RequestMapping(value = "/news_articles.wpm", method = RequestMethod.GET)
    public ModelAndView newsAndArticles(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/news_articles");
        return mav;
    }

    @RequestMapping(value = "/blessings.wpm", method = RequestMethod.GET)
    public ModelAndView blessings(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/blessings");

        return mav;
    }

    @RequestMapping(value = "/inauguralceremony.wpm", method = RequestMethod.GET)
    public ModelAndView inauguralceremony(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/inauguralceremony");

        return mav;
    }

    @RequestMapping(value = "/planprogram.wpm", method = RequestMethod.GET)
    public ModelAndView planprogram(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/planaprogram");
        return mav;
    }

    @RequestMapping(value = "/message.wpm", method = RequestMethod.GET)
    public ModelAndView message(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/message");
        return mav;
    }

    @RequestMapping(value = "/structure.wpm", method = RequestMethod.GET)
    public ModelAndView structure(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/structure");
        return mav;
    }

    @RequestMapping(value = "/participation.wpm", method = RequestMethod.GET)
    public ModelAndView participation(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/participation");
        return mav;
    }

    @RequestMapping(value = "/InaugurationMWPM.wpm", method = RequestMethod.GET)
    public ModelAndView InaugurationMWPM(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/InaugurationMWPM");
        return mav;
    }

    @RequestMapping(value = "/groupMeditation.wpm", method = RequestMethod.GET)
    public ModelAndView groupMeditation(HttpSession session) {
        ModelAndView mav = new ModelAndView("user/groupMeditation");
        return mav;
    }

    //Internal Message Pasges
    @RequestMapping(value = "/shankaracharya.wpm", method = RequestMethod.GET)
    public ModelAndView shankaracharya(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/shankaracharya");
        return mav;
    }

    @RequestMapping(value = "/Mahapragya.wpm", method = RequestMethod.GET)
    public ModelAndView Mahapragya(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/Mahapragya");
        return mav;
    }

    @RequestMapping(value = "/vidyanarasimha.wpm", method = RequestMethod.GET)
    public ModelAndView vidyanarasimha(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/vidyanarasimha");
        return mav;
    }

    @RequestMapping(value = "/BalramSingh.wpm", method = RequestMethod.GET)
    public ModelAndView BalramSingh(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/BalramSingh");
        return mav;
    }

    @RequestMapping(value = "/ShivrajSingh.wpm", method = RequestMethod.GET)
    public ModelAndView ShivrajSingh(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/ShivrajSingh");
        return mav;
    }

    @RequestMapping(value = "/VasundharaRaje.wpm", method = RequestMethod.GET)
    public ModelAndView VasundharaRaje(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/VasundharaRaje");
        return mav;
    }

    @RequestMapping(value = "/RajasekharaReddy.wpm", method = RequestMethod.GET)
    public ModelAndView RajasekharaReddy(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/RajasekharaReddy");
        return mav;
    }

    @RequestMapping(value = "/Lakshmikant.wpm", method = RequestMethod.GET)
    public ModelAndView Lakshmikant(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/Lakshmikant");
        return mav;
    }

    @RequestMapping(value = "/AshokSinghal.wpm", method = RequestMethod.GET)
    public ModelAndView AshokSinghal(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/AshokSinghal");
        return mav;
    }

    @RequestMapping(value = "/Srivasuki.wpm", method = RequestMethod.GET)
    public ModelAndView Srivasuki(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/Srivasuki");
        return mav;
    }

    @RequestMapping(value = "/BevanMorris.wpm", method = RequestMethod.GET)
    public ModelAndView BevanMorris(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/BevanMorris");
        return mav;
    }

    @RequestMapping(value = "/NandKishore.wpm", method = RequestMethod.GET)
    public ModelAndView NandKishore(HttpSession session) {
        ModelAndView mav = new ModelAndView("message/NandKishore");
        return mav;
    }

}
