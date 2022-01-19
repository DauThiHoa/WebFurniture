package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.services.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "handling-login", value = "/handling-login")
public class HandlingLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (UserServices.getInstance().checkLogin(email, password)) {
            response.sendRedirect("ProductDetailsList");
        } else {
            System.out.println("sai");
            request.setAttribute("error", "email or password is correct");
            request.getRequestDispatcher("login").forward(request,response);
        }
    }


}
