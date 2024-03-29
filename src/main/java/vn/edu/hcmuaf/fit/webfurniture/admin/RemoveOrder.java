package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RemoveOrder", value = "/RemoveOrder")
public class RemoveOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("idOrder");

        int orderDetails = OrderService.getInstance().delete_OrderDetails(id);
        int customer =  OrderService.getInstance().delete_Customer(id);
        int orders = OrderService.getInstance().delete_Order(id);

        request.setAttribute("error", "");

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        String search = request.getParameter("search");
        if ( search != null) {
            request.setAttribute("search", search);
        }else {
            request.setAttribute("search", "");
        }

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

//        request.getRequestDispatcher("/WebFurniture_war_exploded/success.jsp").forward(request, response);
        if ( customer == 1  && orders == 1 && orderDetails == 1 ) {

            request.getRequestDispatcher("/Order").forward(request, response);
        }else{

            request.setAttribute("error", "Delete failed order");
            request.getRequestDispatcher("/Order").forward(request, response);
//          request.getRequestDispatcher("fail.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
