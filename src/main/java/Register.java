
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
<<<<<<< HEAD
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        request.getRequestDispatcher("DangKy.jsp").forward(request, response);
        if (UserServices.getInstance().register(name, password, email)) {
            response.sendRedirect("../WebFurniture_war_exploded/DangNhap.jsp");
        } else {
            request.setAttribute("error", "Username exits");
            request.getRequestDispatcher("../WebFurniture_war_exploded/DangKy.jsp").forward(request, response);
        }
=======
        request.getRequestDispatcher("/DangKy/DangKy.jsp").forward(request,response);
>>>>>>> d7c202f0a6198696207c97dcbc351fe206ae06d6
    }
}
