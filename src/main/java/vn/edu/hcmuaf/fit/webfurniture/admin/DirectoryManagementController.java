package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DirectoryManagementController", value = "/DirectoryManagement")
public class DirectoryManagementController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

            request.setAttribute("PageWeb" , DirectoryManagementService.getInstance().getAll());
            request.getRequestDispatcher("DirectoryManagement.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
    }
}
