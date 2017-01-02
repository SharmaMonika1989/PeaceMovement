/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peace.services;

import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.InternetHeaders;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author monika
 */
public class MailService implements Runnable {
    
    private String from = "sharma.monika6689@gmail.com";
    private String to;
    private String body;
    private String subject;
    final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
    
    public MailService(String to, String subject, String body){
        this.subject = subject;
        this.body = body;
        this.to = to;
    }
    
    public boolean sendMail() throws MessagingException{
        
        Properties props = System.getProperties();  
        props.setProperty("mail.smtp.host", "smtp.gmail.com");
        props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.port", "465");
        props.setProperty("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.auth", "true");
        props.put("mail.debug", "true");
        props.put("mail.store.protocol", "pop3");
        props.put("mail.transport.protocol", "smtp");
        final String username = "mwpm.mitpl.2016@gmail.com";//
        final String password = "mwpm2016";
      
        Session session = Session.getDefaultInstance(props, 
                          new Authenticator(){
                             protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(username, password);
                             }});
 
        InternetHeaders headers = new InternetHeaders();
        headers.addHeader("Content-type", "text/html; charset=UTF-8");
        MimeMessage message = new MimeMessage(session);
        try {
            MimeBodyPart bodyPart = new MimeBodyPart(headers, body.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException ex) {
            Logger.getLogger(MailService.class.getName()).log(Level.SEVERE, null, ex);
        }
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
        message.setSubject(subject);
        message.setText(body);

        Transport.send(message);  
        System.out.println("message sent successfully....");  
  
        return true;
    }

    @Override
    public void run() {
        try {
            sendMail();
        } catch (MessagingException ex) {
            Logger.getLogger(MailService.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    public static void main(String... args){
        MailService service = new MailService("sdwivedi88@gmail.com", "HI", "Hello");
        try {
            service.sendMail();
        } catch (MessagingException ex) {
            Logger.getLogger(MailService.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
