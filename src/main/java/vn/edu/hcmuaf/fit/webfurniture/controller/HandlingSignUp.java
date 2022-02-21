package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static vn.edu.hcmuaf.fit.webfurniture.mail.Mail.sendMail;

@WebServlet(name = "handling-signup", value = "/handling-signup")
public class HandlingSignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println(name);
        boolean registerSuccess  = UserServices.getInstance().register(name, password, email);
        System.out.println(registerSuccess);

        String subject = "SIGN UP FOR AN ACCOUNT";
        String content = "<h2 style=\"text-align: center; color: #00dea2; font-weight: bold\">Congratulation !</h2>\n ";
        content += "<h5 style=\"text-align: center\">You have successfully registered an account at WebFurniture.</h5>\n";
        content += "<h5 style=\"text-align: center\">You can use this account to access WebFurniture!</h5>\n";

        if(registerSuccess){
            boolean result = sendMail(email, subject, content);
            response.sendRedirect("login");
//            request.getRequestDispatcher("login").forward(request, response);
        }else {
            request.getRequestDispatcher("controllerRegister").forward(request, response);
        }
    }
}
