
package booking.hibernate.dao;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailDAO {
        

public void EnvoyerEmail(String destinataire, String textmessage) {
    
 
        final String username = "picsou.guerville@gmail.com";
        final String password = "nextformation";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
          new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                }
          });

        try {

                Message message = new MimeMessage(session);
                message.setFrom(new InternetAddress("Booking@gmail.com"));
                message.setRecipients(Message.RecipientType.TO,
                        InternetAddress.parse(destinataire));
                message.setSubject("reservation");
                message.setText(textmessage);

                Transport.send(message);

                System.out.println("Done");

        } catch (MessagingException e) {
                throw new RuntimeException(e);
        }
    }// Envoyer Mail
}
