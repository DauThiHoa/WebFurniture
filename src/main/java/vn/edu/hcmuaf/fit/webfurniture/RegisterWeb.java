package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;
import vn.edu.hcmuaf.fit.webfurniture.services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterWeb", value = "/controllerRegister")
public class RegisterWeb extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
//        request.setAttribute("error", "");

        // Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart", sumListCart);

        String search = request.getParameter("search");
        if (search != null) {
            request.setAttribute("search", search);
        } else {
            request.setAttribute("search", "");
        }

        if (name != null && password != null && email != null) {

            System.out.println(name + " / " + password  + " / " + email);

            if (UserServices.getInstance().register(name, password, email)) {
                response.sendRedirect("login");
            } else {

                request.setAttribute("error", "Email account already exists");
                // Số sản phẩm trong giỏ hàng

                request.getRequestDispatcher("register").forward(request, response);
            }
        }

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

//      request.getRequestDispatcher("register.jsp").forward(request, response);
    }
}
