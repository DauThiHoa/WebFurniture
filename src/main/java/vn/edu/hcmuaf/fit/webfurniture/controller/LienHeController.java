package vn.edu.hcmuaf.fit.webfurniture.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LienHeController", value = "/LienHe")
public class LienHeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String content = request.getParameter("content");

        request.setAttribute("name" , name);
        request.setAttribute("email" , email);
        request.setAttribute("content" , content);

        request.getRequestDispatcher("LienHe.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }
}
