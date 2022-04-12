import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;
import vn.edu.hcmuaf.fit.webfurniture.services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Register", value = "/controllerRegister")
public class Register extends HttpServlet {
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

        request.getRequestDispatcher("DangKy.jsp").forward(request, response);

if ( name != null && password != null && email != null ) {
    System.out.println(name +"REGISTER");
    System.out.println(password +"REGISTER");
    System.out.println(email +"REGISTER");

    if (UserServices.getInstance().register(name, password, email)) {
        response.sendRedirect("../WebFurniture_war_exploded/DangNhap.jsp");
    } else {
        request.setAttribute("error", "Username exits");
        request.getRequestDispatcher("../WebFurniture_war_exploded/DangKy.jsp").forward(request, response);
    }
}
        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        request.getRequestDispatcher("DangKy.jsp").forward(request,response);
    }
}
