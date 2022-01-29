package vn.edu.hcmuaf.fit.webfurniture.cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.service.OrderService;
import vn.edu.hcmuaf.fit.webfurniture.services.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
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

//        boolean test = false;
//        System.out.println(test);
        if ((session.getAttribute("auth")) == null) {
            response.sendRedirect("/WebFurniture_war_exploded/login");
            session.setAttribute("auth" , "");
            return;
        }
        if (session.getAttribute("cart") == null) {
            response.sendRedirect("/WebFurniture_war_exploded/cart");
            return;
        }
//            response.sendRedirect("/WebFurniture_war_exploded/login");
//        boolean result = OrderService.getInstance().createOrder((User) session.getAttribute("auth") ,(Cart) session.getAttribute("cart")) ;
            boolean result = OrderService.getInstance().createOrder((Cart) session.getAttribute("cart"));

            session.removeAttribute("cart");

            if (result) {
//            response.sendRedirect("/WebFurniture_war_exploded/ProductDetailsList");
                response.sendRedirect("/WebFurniture_war_exploded/payment");
            } else {
                response.sendRedirect("/WebFurniture_war_exploded/cart");
            }

    }
}
