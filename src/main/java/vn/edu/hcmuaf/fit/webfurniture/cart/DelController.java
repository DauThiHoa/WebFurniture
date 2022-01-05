package vn.edu.hcmuaf.fit.webfurniture.cart;

import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;

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
         HttpSession session = request.getSession();
         // load cart from session
        Cart cart = ( Cart) session.getAttribute("cart");
        if ( cart.get(id) == null ){
            response.setStatus(404);
            return ;
        }
        cart.remove(id);
        session.setAttribute("cart" , cart);
    }
}
