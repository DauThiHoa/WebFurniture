package vn.edu.hcmuaf.fit.webfurniture.mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;


public class Mail {
    private static String username = "19130075@st.hcmuaf.edu.vn";
    private static String password = "N7481360345389984$";

    // to => ai / subject => noi dung / content =?
    public static boolean sendMail(String to, String subject, String content) {
        Session session = connect();
        try {
            Message messmage = new MimeMessage(session);
            messmage.setFrom(new InternetAddress(username, "WebFurniture"));
            messmage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            messmage.setSubject(subject);
            messmage.setText(content);
//            messmage.setContent(content, "text/html");
            Transport.send(messmage);
            return true;
        }catch (MessagingException | UnsupportedEncodingException e){
            e.printStackTrace();
            return false;
        }
    }

    private static Session connect() {
        Properties props = new Properties();
        props.put("mail.smtp.auth","true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.socketFactory.class",
                  "javax.net.ssl.SSLSocketFactory");
        //smtp.googlemail.com || smtp.gmail.com || gmail.com
        props.put("mail.smtp.host","smtp.gmail.com");
        // 465 || 587
        props.put("mail.smtp.port","587");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        return Session.getInstance(props,
                new javax.mail.Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(username,username);
            }
                });

    }

    public static void main(String[] args) {
        // Gui den 19130052
        System.out.println(sendMail("19130075@st.hcmuaf.edu.vn","Test Mail","Dear mail Crawler\n\n No spam to my emai, please") ? "Send mail success" : "Send mail fail");
    }
}



