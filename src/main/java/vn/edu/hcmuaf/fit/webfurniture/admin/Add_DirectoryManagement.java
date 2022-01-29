package vn.edu.hcmuaf.fit.webfurniture.admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Add_DirectoryManagement", value = "/Add_DirectoryManagement")
public class Add_DirectoryManagement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
//
//        request.setAttribute("Category" ,"" );
//        request.setAttribute("linkImage" ,"" );
//        request.setAttribute("Modules" ,"" );
        request.getRequestDispatcher("addDirectoryManagement.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
    }
}
