package vn.edu.hcmuaf.fit.webfurniture.cart;

import com.google.gson.Gson;
import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "UpdateController", value = "/cart-updateQuantity")
public class UpdateController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request , response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        HttpSession session = request.getSession();
        // load cart from session

        //        Số sản phẩm trong giỏ hàng

        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        Cart cart = ( Cart) session.getAttribute("cart");
        if ( cart.get(id) == null ){
            response.setStatus(404);
            return ;
        }
        int quantity =  cart.get(id).getQuantitySold() ;
        try {
            quantity = Integer.parseInt(request.getParameter("quantity"));
        }catch (NumberFormatException e ){
            response.getWriter().println(
                    new Gson().toJson(Map.of("quantity" ,quantity))
            );
            return;
        }
        int getSumQuantityListProduct  = ProductDetailsService.getInstance().getSumQuantityListProduct (quantity);
        System.out.println("getSumQuantityListProductCart    =>    " + getSumQuantityListProduct );
        ProductDetailsService.getInstance().updateQuantitySoldCart(id);

            ProductDetailsService.getInstance().setSumCart(getSumQuantityListProduct );
            int quantityAffterUpadte = cart.updateQuantitySold(id, quantity);

        System.out.println("quantityAffterUpadte " + quantityAffterUpadte);

        ProductDetailsService.getInstance().updateQuantitySoldOneProduct(id, quantityAffterUpadte);
        System.out.println(id);
        ProductDetailsService.getInstance().setMoneyOneProduct(id , quantityAffterUpadte);

        session.setAttribute("cart", cart);
         response.getWriter().println(
                  new Gson().toJson(Map.of("quantity", quantityAffterUpadte))
             );

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

    }
}
