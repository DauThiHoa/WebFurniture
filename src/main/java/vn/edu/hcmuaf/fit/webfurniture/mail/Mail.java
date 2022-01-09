/*package vn.edu.hcmuaf.fit.webfurniture.mail;

import com.google.protobuf.*;
import com.mysql.cj.Session;
import com.sun.jdi.connect.Transport;

import javax.mail.*;
import java.io.UnsupportedEncodingException;
import java.net.PasswordAuthentication;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

import static javax.management.remote.JMXConnectorFactory.connect;

public class Mail {
    private static String username = "19130052@st.hcmuaf.edu,vn";
    private static String password = "taomydung2612@";

    public static boolean sendMail(String to, String subject, String content) {
         Session session = connect();
        try {
            Message messmage = new MimeMessage(session);
            messmage.setFrom(new InternetAddress(username, "Web noi that"));
            messmage.setRecipients(Message.RecipientType.TO,
                    InternetAddress.prase(to));
            messmage.setSubject(subject);
            messmage.setText(content);
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
        props.put("mail.smtp.host","smtp.gmail.com");
        props.put("mail.smtp.port","587");

        return Session.getInstance(props,
                new javax.mail.Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(username,password);
            }
                });
    }

    public static void main(String[] args) {
        System.out.println(sendMail("19130052@st.hcmuaf.edu.vn","Test mail","Dear mail Crawler\n\n No spam to my emai, please") ? "Send mail success" : "Send mail fail");
    }
}

 */

