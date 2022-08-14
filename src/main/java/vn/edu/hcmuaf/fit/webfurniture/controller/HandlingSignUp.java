package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;
import vn.edu.hcmuaf.fit.webfurniture.services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static vn.edu.hcmuaf.fit.webfurniture.mail.Mail.sendMail;

@WebServlet(name = "HandlingSignUp", value = "/handling-signup")
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

        request.setAttribute("error", "");

        String search = request.getParameter("search");
        if ( search != null) {
            request.setAttribute("search", search);
        }else {
            request.setAttribute("search", "");
        }

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        boolean registerSuccess = false;
        if (name != "" && email != "" && password != "") {
             registerSuccess = UserServices.getInstance().register(name, password, email);

        }else {
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("error", "Email account already exists");

            request.getRequestDispatcher("register").forward(request, response);

        }
        String subject = "SIGN UP FOR AN ACCOUNT";
        String content = "<i style=\"text-align: center ; color: #1fb5d4; font-size: 300% \" class=\"fa fa-check-circle\" aria-hidden=\"true\"></i>";
        content += "<h2 style=\"text-align: center; color: #00dea2; font-weight: bold\">Congratulation !</h2>\n ";
        content += "<h5 style=\"text-align: center\">You have successfully registered an account at WebFurniture.</h5>\n";
        content += "<h5 style=\"text-align: center\">You can use this account to access WebFurniture!</h5>\n";

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        if(registerSuccess){
            boolean result = sendMail(email, subject, content);
            request.getRequestDispatcher("login").forward(request, response);

        }else {
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("error", "Email account already exists");

            request.getRequestDispatcher("register").forward(request, response);
        }

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

    }

}
