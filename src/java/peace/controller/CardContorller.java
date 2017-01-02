/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peace.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import peace.dao.UserDAOImpl;
import peace.model.User;
import peace.services.CardServices;

/**
 *
 * @author monika
 */
@Controller
public class CardContorller {

    @Autowired
    public UserDAOImpl userDAO;
    
    String home = System.getProperty("user.home");
    public String card = "MembershipCard";
    
    
    
    @RequestMapping("/downloadCard.wpm")
    public @ResponseBody byte[] downloadCard(HttpServletRequest request, HttpServletResponse response) {
        String serverImagePath = request.getServletContext().getRealPath("/WEB-INF/resources/CardTemplate_rgb.png");
        CardServices cardService = new CardServices();
        String email = (String) request.getSession().getAttribute("email");
        User user = userDAO.getUserByEmail(email);
        if(user.getDob() == null){
            String message = "Please fill the participation form.";
            response.setContentType("text/plain");
            response.setContentLength(message.getBytes().length);
            return message.getBytes();
        }
        String fileName = user.getReg_id() + ".jpg";
        byte[] imageBytes = null;
        try {
            imageBytes = cardService.mergeImageAndText(serverImagePath, user);
        } catch (IOException ioe) {
        }
        
        response.setContentType("image/jpeg");
        response.setContentLength(imageBytes.length);
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
        return imageBytes;
    }
}