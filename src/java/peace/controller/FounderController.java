/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peace.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FounderController {

    //Founder Message
    @RequestMapping(value = "/founderMessage.wpm", method = RequestMethod.GET)
    public ModelAndView founderMessage(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/founderMessage");
        return mav;
    }

    @RequestMapping(value = "/maharishiAchievements.wpm", method = RequestMethod.GET)
    public ModelAndView maharishiAchievements(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/maharishiAchievements");
        return mav;
    }
      @RequestMapping(value = "/maharishiWorld.wpm", method = RequestMethod.GET)
    public ModelAndView maharishiWorld(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/maharishiWorld");
        return mav;
    }
        @RequestMapping(value = "/achievement1.wpm", method = RequestMethod.GET)
    public ModelAndView achievement1(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement1");
        return mav;
    }
       @RequestMapping(value = "/achievement2.wpm", method = RequestMethod.GET)
    public ModelAndView achievement2(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement2");
        return mav;
    }
       @RequestMapping(value = "/achievement3.wpm", method = RequestMethod.GET)
    public ModelAndView achievement3(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement3");
        return mav;
    }
       @RequestMapping(value = "/achievement4.wpm", method = RequestMethod.GET)
    public ModelAndView achievement4(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement4");
        return mav;
    }
       @RequestMapping(value = "/achievement5.wpm", method = RequestMethod.GET)
    public ModelAndView achievement5(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement5");
        return mav;
    }
       @RequestMapping(value = "/achievement6.wpm", method = RequestMethod.GET)
    public ModelAndView achievement6(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement6");
        return mav;
    }
       @RequestMapping(value = "/achievement7.wpm", method = RequestMethod.GET)
    public ModelAndView achievement7(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement7");
        return mav;
    }
       @RequestMapping(value = "/achievement8.wpm", method = RequestMethod.GET)
    public ModelAndView achievement8(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement8");
        return mav;
    }
       @RequestMapping(value = "/achievement9.wpm", method = RequestMethod.GET)
    public ModelAndView achievement9(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement9");
        return mav;
    }
       @RequestMapping(value = "/achievement10.wpm", method = RequestMethod.GET)
    public ModelAndView achievement10(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement10");
        return mav;
    }
       @RequestMapping(value = "/achievement11.wpm", method = RequestMethod.GET)
    public ModelAndView achievement11(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement11");
        return mav;
    }
       @RequestMapping(value = "/achievement12.wpm", method = RequestMethod.GET)
    public ModelAndView achievement12(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement12");
        return mav;
    }
       @RequestMapping(value = "/achievement13.wpm", method = RequestMethod.GET)
    public ModelAndView achievement13(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement13");
        return mav;
    }
       @RequestMapping(value = "/achievement14.wpm", method = RequestMethod.GET)
    public ModelAndView achievement14(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement14");
        return mav;
    }
       @RequestMapping(value = "/achievement15.wpm", method = RequestMethod.GET)
    public ModelAndView achievement15(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement15");
        return mav;
    }
       @RequestMapping(value = "/achievement16.wpm", method = RequestMethod.GET)
    public ModelAndView achievement16(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement16");
        return mav;
    }
       @RequestMapping(value = "/achievement17.wpm", method = RequestMethod.GET)
    public ModelAndView achievement17(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement17");
        return mav;
    }
       @RequestMapping(value = "/achievement18.wpm", method = RequestMethod.GET)
    public ModelAndView achievement18(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement18");
        return mav;
    }
       @RequestMapping(value = "/achievement19.wpm", method = RequestMethod.GET)
    public ModelAndView achievement19(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement19");
        return mav;
    }
       @RequestMapping(value = "/achievement20.wpm", method = RequestMethod.GET)
    public ModelAndView achievement20(HttpSession session) {
        ModelAndView mav = new ModelAndView("founderMessage/achievement20");
        return mav;
    }
}
