package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateOrder", value = "/UpdateOrder")
public class UpdateOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        String idOrder = request.getParameter("idOrder");
        String name = request.getParameter("name");
        String dateOrder = request.getParameter("dateOrder");
        String dateReceipt = request.getParameter("dateReceipt");
        String totalMoney = request.getParameter("totalMoney");
        String bank = request.getParameter("bank");
        String status = request.getParameter("status");

        int update_Customer = OrderService.getInstance().update_Customer(idOrder,name,bank);
        int update_Order = OrderService.getInstance().update_Order(idOrder,dateOrder,dateReceipt,status);

        if ( update_Customer == 1 && update_Order == 1 ) {
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
