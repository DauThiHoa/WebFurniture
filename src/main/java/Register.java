import vn.edu.hcmuaf.fit.webfurniture.services.UserServices;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        if (UserServices.getInstance().register(name, password, email)) {
            response.sendRedirect("http://localhost:8080/WebFurniture_war_exploded/DangNhap/DangNhap.jsp");
        } else {
            request.setAttribute("error", "Username exits");
            request.getRequestDispatcher("http://localhost:8080/WebFurniture_war_exploded/DangKy/DangKy.jsp").forward(request, response);
        }
    }
}
