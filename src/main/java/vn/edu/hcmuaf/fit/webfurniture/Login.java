package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.service.UserService;
import vn.edu.hcmuaf.fit.webfurniture.service.UserServices;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        request.getRequestDispatcher("DangNhap.jsp").forward(request, response);
        if (UserService.getInstance().checkLogin(email, password)) {
//            response.getWriter().println("12");
            request.getRequestDispatcher("/ProductDetailsList").forward(request, response);
        } else {
            request.setAttribute("error", "email or password is correct");
            response.sendRedirect("../WebFurniture_war_exploded/DangNhap.jsp");
            System.out.println(email);
            System.out.println(password);
            if (UserServices.getInstance().checkLogin(email, password)) {
//            response.getWriter().println("12");
                response.sendRedirect("/ProductDetailsList");
            } else {
                request.setAttribute("error", "email or password is correct");
//            response.sendRedirect("/DangNhap/DangNhap.jsp");
                request.getRequestDispatcher("DangNhap.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
