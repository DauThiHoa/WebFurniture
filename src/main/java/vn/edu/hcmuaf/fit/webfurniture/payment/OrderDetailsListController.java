package vn.edu.hcmuaf.fit.webfurniture.payment;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "OrderDetailsListController", value = "/payment")
public class OrderDetailsListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           String idProductDetails =  request.getParameter("idProductDetails");
           request.setAttribute("OrderDetailsAll" , OrderDetailsService.getInstance().getOrderDetails());
           request.getRequestDispatcher("ThanhToan.jsp").forward(request , response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request , response);
    }
}
