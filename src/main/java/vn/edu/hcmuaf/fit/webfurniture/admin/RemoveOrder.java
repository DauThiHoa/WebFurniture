package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RemoveOrder", value = "/RemoveOrder")
public class RemoveOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             String id = request.getParameter("id");
        int customer =  OrderService.getInstance().delete_Customer(id);
        int orders = OrderService.getInstance().delete_Order(id);

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

//        request.getRequestDispatcher("/WebFurniture_war_exploded/success.jsp").forward(request, response);
        if ( customer == 1  && orders == 1 ) {
            request.getRequestDispatcher("/Order").forward(request, response);
        }else{
            request.getRequestDispatcher("fail.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
