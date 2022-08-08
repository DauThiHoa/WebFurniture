package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddDirectoryManagement", value = "/AddDirectoryManagement")
public class AddDirectoryManagement extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String Category = request.getParameter ("Category"); // Loai Home, ...
        String linkImage = request.getParameter ("linkImage"); // Link Image
        String Modules = request.getParameter ("Modules");
        String dis = request.getParameter ("Display");

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

        String display ;
        if (dis != null ){
            display = dis;
        }else {
            display = "none";
        }

        String search = request.getParameter("search");
        if ( search != null) {
            request.setAttribute("search", search);
        }else {
            request.setAttribute("search", "");
        }

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        if ( !(Category.equals("")) && !(linkImage.equals(""))  &&  !(Modules.equals(""))  ) {
            boolean result = DirectoryManagementService.getInstance().addDirectoryManagement(Category, linkImage, Modules, display);
            if (result) {
                request.getRequestDispatcher("Add_DirectoryManagement").forward(request, response);
            } else {
                request.getRequestDispatcher("fail.jsp").forward(request, response);
            }
        }else {
            request.setAttribute("Category" ,Category );
            request.setAttribute("linkImage" ,linkImage );
            request.setAttribute("Modules" ,Modules );
            request.getRequestDispatcher("Add_DirectoryManagement").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
    }
}
