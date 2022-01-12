package vn.edu.hcmuaf.fit.webfurniture.cart.manage.productdetails;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Edit", value = "/productdetails/action")
class Action extends HttpServlet {
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
//        List<ProductDetails> list = ProductDetailsService.getInstance().getAll();
//        // Di chuyen den list
//        request.setAttribute("list" , list);

        String id = request.getParameter("id");
        String action = request.getParameter("action");
        System.out.println(action);
        if ( action.equals("delete")){
        request.setAttribute("id" , id);
//            request.getRequestDispatcher("/WEB-INF/view/productdetails/delete.jsp").forward(request, response);
//        request.getRequestDispatcher("http://localhost:8080/WebFurniture_war_exploded/manage/productdetails").forward(request, response);
        }else if ( action.equals("edit")){
            request.setAttribute("id" , id );
//            request.getRequestDispatcher("/WEB-INF/view/productdetails/edit.jsp").forward(request, response);
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

     String id = request.getParameter("id");
     int productDetails =  ProductDetailsService.getInstance().delete(id);
     if ( productDetails == 1 ) {
         response.getWriter().write("success");
     }else{
         response.getWriter().write("fail");
     }

    }

}
