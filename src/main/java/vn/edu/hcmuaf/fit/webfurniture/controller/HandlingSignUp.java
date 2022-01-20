package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.services.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

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
        if(registerSuccess){
            response.sendRedirect("login");
        }
    }
}
