package vn.edu.hcmuaf.fit.webfurniture.cart;

import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.service.OrderService;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CheckOutController", value = "/cart-checkOut")
public class CheckOutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request , response );
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get session
        HttpSession session = request.getSession();
        // Xử lý đăng nhập -> lấy id khách hàng

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);
//        request.setAttribute("maxQuantity" , ProductDetailsService.getInstance().maxQuantity(id));

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

//        boolean test = false;
//        System.out.println(test);

        String idUser = "" ;
        if ((session.getAttribute("auth")) == null) {
            response.sendRedirect("/WebFurniture_war_exploded/login");
            session.setAttribute("auth" , "");
            return;
        }
        if (session.getAttribute("cart") == null) {
            response.sendRedirect("/WebFurniture_war_exploded/cart");
            return;
        }

        boolean result = OrderService.getInstance().createOrder((Cart) session.getAttribute("cart") );

        session.removeAttribute("cart");

            if (result) {
//                if ( ProductDetailsService.getInstance().removeCart()){
//                ProductDetailsService.getInstance().setSumCart(0);
                response.sendRedirect("/WebFurniture_war_exploded/payment");
//                }
            } else {
                response.sendRedirect("/WebFurniture_war_exploded/cart");
            }

    }
}
