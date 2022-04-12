package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Edit_DirectoryManagement", value = "/edit_DirectoryManagement")
public class Edit_DirectoryManagement extends HttpServlet {
    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     * show information of productDetails with id
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

     String id = request.getParameter("id");
     String nameCategory = request.getParameter("nameCategory");
     String modules = request.getParameter("modules");
     String dis = request.getParameter("display");

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        String display ;
     if (dis != null ){
         display = dis ;
     }else {
         display = "none";
     }

     int update = DirectoryManagementService.getInstance().update(id,nameCategory,modules,display);

     if ( update == 1 ) {
         request.getRequestDispatcher("/DirectoryManagement").forward(request, response);
     }else{
         request.getRequestDispatcher("fail.jsp").forward(request, response);
     }


    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     * Delete productdetails with id
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
    }

}
