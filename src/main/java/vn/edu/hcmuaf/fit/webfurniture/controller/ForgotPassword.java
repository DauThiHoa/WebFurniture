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

@WebServlet(name = "ForgotPassword", value = "/ForgotPassword")
public class ForgotPassword extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        request.setAttribute("email", email);
        request.setAttribute("password", password);
        request.setAttribute("error", "");

        System.out.println(email + "///////" + password);
        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        if (UserServices.getInstance().checkLogin(email, password)) {
            User.getInstance().setEmail(email);
            User.getInstance().setPassword(password);
            User.getInstance().setId(UserServices.getInstance().idUser(email)+"");
            User.getInstance().setFullname(UserServices.getInstance().userName(email));

            response.sendRedirect("ProductDetailsList");
//          response.sendRedirect("cart");

        } else {
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("error", "Email or password is not correct");
            request.getRequestDispatcher("login").forward(request,response);
        }

    }
}
