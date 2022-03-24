package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.service.ContactService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static vn.edu.hcmuaf.fit.webfurniture.mail.Mail.sendMail;

@WebServlet(name = "LienHeSendController", value = "/LienHeSendController")
public class LienHeSendController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String content = request.getParameter("content");

        if ( name != "" && email != "" && content != ""){
        boolean result = ContactService.getInstance().addContact(name,email,content);
            System.out.println(result);
        if (result) {
            request.setAttribute("name" , "");
            request.setAttribute("email" , "");
            request.setAttribute("content" , "");

            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");

            String subject = " CONTACT SENT SUCCESSFULLY ";
//          String content = "<img style=\"height: 50px ; width: 50px\" src=\"data:img.png\">";
            String contentMail = "<h2 style=\"text-align: center; color: #00dea2; font-weight: bold\">Congratulations you have successfully submitted your contact to our furniture website !</h2> \n";
            contentMail += "<h5 style=\"text-align: center\">The site will contact you via the email you responded to to answer your question.</h5>\n";
            contentMail += "<h5 style=\"text-align: center\">Thank you very much for your comments on the website!</h5> \n";

            boolean resultMail = sendMail(email, subject, contentMail);
            request.getRequestDispatcher("LienHe").forward(request, response);
        }else {
            request.setAttribute("name" , name);
            request.setAttribute("email" , email);
            request.setAttribute("content" , content);
            request.getRequestDispatcher("LienHe").forward(request, response);
          }
        }
        else {
            request.setAttribute("name" , name);
            request.setAttribute("email" , email);
            request.setAttribute("content" , content);
            request.getRequestDispatcher("LienHe").forward(request, response);
        }

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }
}
