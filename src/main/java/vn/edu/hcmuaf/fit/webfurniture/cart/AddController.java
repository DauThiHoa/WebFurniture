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
        String quantitySold =  request.getParameter("quantitySold");
        ProductDetails productDetails =  ProductDetailsService.getInstance().getById(id);
        request.setAttribute("maxQuantity" , ProductDetailsService.getInstance().maxQuantity(id));

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        // Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);
        String search = request.getParameter("search");
        if ( search != null) {
            request.setAttribute("search", search);
        }else {
            request.setAttribute("search", "");
        }
        if ( productDetails != null ) {
           HttpSession session = request.getSession();
           Cart cart = ( Cart) session.getAttribute("cart");
           if ( cart == null ){
               cart = Cart.getInstance();
       }
           if (quantitySold != null ) {
               cart.setQuantitySold(Integer.parseInt(quantitySold));
       }
           cart.put(productDetails);
           session.setAttribute("cart" , cart); // add session cart

           int totalMoney = productDetails.getPriceNew() * cart.getQuantitySold() ;
           int sumList = ProductDetailsService.getInstance().sumListCart(productDetails.getLinkImage(), productDetails.getId() ,
                   productDetails.getName(), productDetails.getPriceNew(), cart.getQuantitySold(), totalMoney);

           ProductDetailsService.getInstance().setSumCart(sumList);

       }
       response.sendRedirect("/WebFurniture_war_exploded/cart");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                   doGet(request,response);
    }
}
