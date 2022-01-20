package vn.edu.hcmuaf.fit.webfurniture.cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.service.OrderService;

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
        String id = null ;
        String email = null ;
        if ( id == null && email == null ) {
            if (session.getAttribute("auth") == null) {
                response.sendRedirect("/WebFurniture_war_exploded/login");
                id = ((User) session.getAttribute("auth")).getId();
                email = ((User) session.getAttribute("auth")).getEmail();

                return;
            }
        }
        response.getWriter().println(id);
        response.getWriter().println(email);

        if ( session.getAttribute("cart") == null ){
            response.sendRedirect("/WebFurniture_war_exploded/cart");
            return;
        }
//        boolean result = OrderService.getInstance().createOrder((User) session.getAttribute("auth") ,(Cart) session.getAttribute("cart")) ;
//        session.removeAttribute("cart");
        boolean result = true ;
        if (result) {
//            response.sendRedirect("/WebFurniture_war_exploded/ProductDetailsList");
            response.sendRedirect("/WebFurniture_war_exploded/payment");
        } else {
            response.sendRedirect("/WebFurniture_war_exploded/cart");
        }
    }
}
