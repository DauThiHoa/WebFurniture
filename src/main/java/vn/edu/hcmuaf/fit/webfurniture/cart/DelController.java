package vn.edu.hcmuaf.fit.webfurniture.cart;

import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DelController", value = "/cart-del")
public class DelController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          doPost(request , response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

         String id = request.getParameter("id");
         System.out.println("IDDDDDDDDDDDDDĐ" + id);
         request.setAttribute("maxQuantity" , ProductDetailsService.getInstance().maxQuantity(id));

         HttpSession session = request.getSession();
         // load cart from session

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        Cart cart = (Cart) session.getAttribute("cart");
        if ( cart.get(id) == null ){
            response.setStatus(404);
            return ;
        }

        boolean removeProductCart = ProductDetailsService.getInstance().removeProductCart(id);

        if ( removeProductCart ) {
            int getSumQuantityListProductCart = ProductDetailsService.getInstance().getSumQuantityListProductCart();
            System.out.println("getSumQuantityListProductCart" + getSumQuantityListProductCart);
            ProductDetailsService.getInstance().setSumCart(getSumQuantityListProductCart);
            cart.remove(id);
            session.setAttribute("cart", cart);
        }else {
            response.setStatus(404);
            return ;
        }

    }
}
