package vn.edu.hcmuaf.fit.webfurniture.cart;

import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddController", value = "/cart-add")
public class AddController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get productDetalis id from request
       String id =  request.getParameter("id");
       ProductDetails productDetails =  ProductDetailsService.getInstance().getById(id);
       if ( productDetails != null ){
           HttpSession session = request.getSession();
           Cart cart = ( Cart) session.getAttribute("cart");
           if ( cart == null ){
               cart = Cart.getInstance();
           }
           cart.put(productDetails);
           session.setAttribute("cart" , cart); // add session cart
       }

       response.sendRedirect("/WebFurniture_war_exploded/cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
