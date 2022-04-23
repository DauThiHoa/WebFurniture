package vn.edu.hcmuaf.fit.webfurniture.productdetails;

import vn.edu.hcmuaf.fit.webfurniture.admin.ProfileService;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Edit", value = "/edit")
public class Edit extends HttpServlet {
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

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String priceNew = request.getParameter("priceNew");
        String priceOld = request.getParameter("priceOld");
        String quantity = request.getParameter("quantity");
        String status = request.getParameter("status");

        String color = request.getParameter("color");
        String size = request.getParameter("size");
        String weight = request.getParameter("weight");
        String material = request.getParameter("material");
        String design = request.getParameter("design");

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);


        int update = ProductDetailsService.getInstance().update(id,name,description,priceNew,priceOld,quantity,status, color,size,weight,material,design);

     if ( update == 1 ) {
         request.getRequestDispatcher("/Product").forward(request, response);
     }else{
         request.getRequestDispatcher("/Product").forward(request, response);
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
