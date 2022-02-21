package vn.edu.hcmuaf.fit.webfurniture.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static vn.edu.hcmuaf.fit.webfurniture.mail.Mail.sendMail;

@WebServlet(name = "MailController", value = "/MailController")
public class MailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String email = request.getParameter("email");
        request.setAttribute("email" , email);

        if ( email != "" ) {
            request.setAttribute("email", "");
        }
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String subject = "SIGN UP FOR NEWS";
//        String content = "<img style=\"height: 50px ; width: 50px\" src=\"data:img.png\">";
        String content = "<h2 style=\"text-align: center; color: #00dea2; font-weight: bold\">Sign up successfully</h2> \n";
        content += "<h5 style=\"text-align: center\">You have successfully registered to receive news from WebFurniture furniture website.</h5>\n";
        content += "<h5 style=\"text-align: center\">We will update via Mail with useful information to you!</h5> \n";
        content += "<h5 style=\"text-align: center\">Thank you for signing up to receive the latest information from us =_=</h5> \n";

        boolean result = sendMail(email, subject, content);
        if(result) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("fail.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }
}
