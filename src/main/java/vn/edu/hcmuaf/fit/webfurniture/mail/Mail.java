package vn.edu.hcmuaf.fit.webfurniture.mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class Mail {
    private static String username = "webfurniture7@gmail.com";
    private static String password = "WebFurniture12345$";

    // to => ai / subject => noi dung / content =?
    public static boolean sendMail(String to, String subject, String content) {
        Session session = connect();
//        session.setDebug(true);
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username, "WebFurniture"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(to));
            message.setSubject(subject);
            message.setHeader("stylesheets" , "stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css");
            message.setContent(content ,"text/html; charset=utf-8" );

            // Tạo đối tượng Email.
            Transport.send(message);
            System.out.println("Done");
            return true;
        }catch (MessagingException | UnsupportedEncodingException e){
            e.printStackTrace();
            return false;
        }
    }

    private static Session connect() {
        Properties props = new Properties();
        props.put("mail.smtp.auth",true);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host","smtp.gmail.com");
        // 465 || 587
        props.put("mail.smtp.port",587);
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");

        return Session.getInstance(props,
                new Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(username,password);
            }
                });

    }

    public static void main(String[] args) {
        // Gui den 19130052
        System.out.println(sendMail("19130075@st.hcmuaf.edu.vn","Test Mail",
                "Dear mail Crawler\n\n No spam to my emai, please  " ) ? "Send mail success" : "Send mail fail");
    }

}



