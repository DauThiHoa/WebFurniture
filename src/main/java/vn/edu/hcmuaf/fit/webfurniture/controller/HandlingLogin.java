package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;
import vn.edu.hcmuaf.fit.webfurniture.services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static vn.edu.hcmuaf.fit.webfurniture.mail.Mail.sendMail;

@WebServlet(name = "handling-login", value = "/handling-login")
public class HandlingLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String check = request.getParameter("check");
        String text = request.getParameter("text");
        int checkInt = Integer.parseInt(check);

        System.out.println("check " + check);
        System.out.println("text " + text);   

        request.setAttribute("email", email);
        request.setAttribute("password", password);
        request.setAttribute("error", "");

        String search = request.getParameter("search");
        if( search != null) {
            request.setAttribute("search", search);
        }else {
            request.setAttribute("search", "");
        }

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        String subject = " FORGOT PASSWORD ";
        String contentMail = "New password for account login WEBFURNITURE : " + text;

        if(checkInt == 1)  {
        if (UserServices.getInstance().checkLogin(email, password)) {
            User.getInstance().setEmail(email);
            User.getInstance().setPassword(password);
            User.getInstance().setId(UserServices.getInstance().idUser(email)+"");
            User.getInstance().setFullname(UserServices.getInstance().userName(email));

            response.sendRedirect("ProductDetailsList");

        } else {
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("error", "Email or password is not correct");
            request.getRequestDispatcher("login").forward(request,response);
          }
        }
        if(checkInt == 2) {
                sendMail(email, subject, contentMail);
                int updatePassword = UserServices.getInstance().updatePassword (email , text);
                if (updatePassword == 1) {
                    User.getInstance().setEmail(email);
                    User.getInstance().setPassword(password);
                    User.getInstance().setId(UserServices.getInstance().idUser(email)+"");
                    User.getInstance().setFullname(UserServices.getInstance().userName(email));

                    request.setAttribute("email", email);
                    request.setAttribute("password", "");
                    request.getRequestDispatcher("login").forward(request,response);

                }


        }}
}
