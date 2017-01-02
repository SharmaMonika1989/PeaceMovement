/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peace.services;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import javax.imageio.ImageIO;
import peace.model.User;

/**
 *
 * @author monika
 */
public class CardServices {
    
    public byte[] mergeImageAndText(String imagePath, User user) throws IOException{
        BufferedImage image = ImageIO.read(new File(imagePath));
        Graphics2D graphics = image.createGraphics();
        
        graphics.setFont(new Font("TimesRoman", Font.BOLD, 24));
        graphics.setColor(Color.BLACK);
        
        graphics.drawString(user.getReg_id(), 616, 106);
        graphics.setFont(new Font("TimesRoman", Font.BOLD, 36));
        graphics.drawString(LocalDate.now().toString(), 571, 177);
        graphics.drawString(user.getfName() + " " + user.getlName(), 178, 606);
        graphics.drawString(user.getDob() != null ? user.getDob().toString() : "NA", 324, 670);
        graphics.drawString(user.getCity() != null ? user.getCity() : "NA", 145, 730);
        graphics.drawString(user.getAddress() != null ? user.getAddress().substring(0, user.getAddress().length()) : "NA", 228, 796);
        graphics.drawString(user.getPhoneNumber() != null ? user.getPhoneNumber() : "NA", 290, 924);
        
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(image, "jpg", baos);
        
        return baos.toByteArray();
    }
    
}
