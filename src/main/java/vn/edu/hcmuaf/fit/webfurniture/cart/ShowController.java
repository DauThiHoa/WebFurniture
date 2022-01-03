package vn.edu.hcmuaf.fit.webfurniture.cart;

import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShowController", value = "/cart")
public class ShowController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// get cart from session
        HttpSession session = request.getSession() ;
        Cart cart = ( Cart ) session.getAttribute("cart");
        if ( cart == null ){
            cart =  Cart.getInstance() ;
        }
        request.setAttribute("cart" , cart);
        request.getRequestDispatcher("GioHang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request , response);
    }
}
