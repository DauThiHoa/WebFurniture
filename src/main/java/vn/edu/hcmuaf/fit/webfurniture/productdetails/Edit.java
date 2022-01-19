package vn.edu.hcmuaf.fit.webfurniture.productdetails;

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

     String id = request.getParameter("id");
     String name = request.getParameter("name");
     String description = request.getParameter("description");
     String priceNew = request.getParameter("priceNew");
     String priceOld = request.getParameter("priceOld");
     String quantity = request.getParameter("quantity");
     String status = request.getParameter("status");

     int update = ProductDetailsService.getInstance().update(id,name,description,priceNew,priceOld,quantity,status);
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
     if ( update == 1 ) {
         request.getRequestDispatcher("/Product").forward(request, response);
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
