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

@WebServlet(name = "Action", value = "/action")
public class Action extends HttpServlet {
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
     int productDetails =  ProductDetailsService.getInstance().delete(id);
        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);
//        request.getRequestDispatcher("/WebFurniture_war_exploded/success.jsp").forward(request, response);
     if ( productDetails == 1 ) {
         request.getRequestDispatcher("/Product").forward(request, response);
     }else{
         request.getRequestDispatcher("fail.jsp").forward(request, response);
     }

//        String action = request.getParameter("action");
//        System.out.println(action);
//        if ( action.equals("delete")){
//        request.setAttribute("id" , id);
//            request.getRequestDispatcher("/WEB-INF/view/productdetails/delete.jsp").forward(request, response);
//        request.getRequestDispatcher("http://localhost:8080/WebFurniture_war_exploded/manage/productdetails").forward(request, response);
//        }else if ( action.equals("edit")){
//            request.setAttribute("id" , id );
//            request.getRequestDispatcher("/WEB-INF/view/productdetails/edit.jsp").forward(request, response);
//        }

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

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
    }

}
