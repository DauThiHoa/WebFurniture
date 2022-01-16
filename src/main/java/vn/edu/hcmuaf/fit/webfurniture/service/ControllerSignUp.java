package vn.edu.hcmuaf.fit.webfurniture.service;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ControllerSignUp", value = "/register")
public class ControllerSignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println(name);
        boolean registerSuccess  = UserServices.getInstance().register(name, password, email);
       if(registerSuccess){
           response.sendRedirect("Login");
       }
    }

}
