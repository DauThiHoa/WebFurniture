package vn.edu.hcmuaf.fit.webfurniture;


<<<<<<< HEAD
import vn.edu.hcmuaf.fit.webfurniture.service.UserService;
=======
import vn.edu.hcmuaf.fit.webfurniture.service.UserServices;
>>>>>>> d7c202f0a6198696207c97dcbc351fe206ae06d6

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
<<<<<<< HEAD
        if (UserService.getInstance().checkLogin(email, password)) {
//            response.getWriter().println("12");
            response.sendRedirect("../WebFurniture_war_exploded/ProductDetailsList");
        }else {
            request.setAttribute("error", "email or password is correct");
            response.sendRedirect("../WebFurniture_war_explodedDangNhap.jsp");
=======
        System.out.println(email);
        System.out.println(password);
        if (UserServices.getInstance().checkLogin(email, password)) {
//            response.getWriter().println("12");
            response.sendRedirect("ProductDetailsList");
        }else {
            request.setAttribute("error", "email or password is correct");
//            response.sendRedirect("/DangNhap/DangNhap.jsp");
            request.getRequestDispatcher("/DangNhap/DangNhap.jsp").forward(request,response);
>>>>>>> d7c202f0a6198696207c97dcbc351fe206ae06d6
        }
    }
}
