package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "handling-login", value = "/handling-login")
public class HandlingLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        request.setAttribute("email", email);
        request.setAttribute("password", password);
        request.setAttribute("error", "");

        if (UserServices.getInstance().checkLogin(email, password)) {
            response.sendRedirect("ProductDetailsList");
//          response.sendRedirect("cart");

        } else {
            request.setAttribute("email", email);
            request.setAttribute("error", "Email or password is correct");
            request.getRequestDispatcher("login").forward(request,response);
        }
    }
}
