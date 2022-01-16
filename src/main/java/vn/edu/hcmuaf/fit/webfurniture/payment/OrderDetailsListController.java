package vn.edu.hcmuaf.fit.webfurniture.payment;

import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.service.OrderService;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "OrderDetailsListController", value = "/payment")
public class OrderDetailsListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//           String idProductDetails =  request.getParameter("idProductDetails");
//           request.setAttribute("ProductDetailsAll" , OrderDetailsService.getInstance().getProductDetails(idProductDetails));
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.setAttribute("OrderDetailsAll" , OrderDetailsService.getInstance().getAll());
        request.setAttribute("getProductDetailsAll" , OrderDetailsService.getInstance().getProductDetailsAll());
        request.setAttribute("sumDiscount" , OrderDetailsService.getInstance().sumDiscount());
        request.setAttribute("sumTotalMoney" , OrderDetailsService.getInstance().sumTotalMoney());
        request.getRequestDispatcher("ThanhToan.jsp").forward(request , response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.setAttribute("OrderDetailsAll" , OrderDetailsService.getInstance().getAll());
        request.setAttribute("getProductDetailsAll" , OrderDetailsService.getInstance().getProductDetailsAll());
        request.setAttribute("sumDiscount" , OrderDetailsService.getInstance().sumDiscount());
        request.setAttribute("sumTotalMoney" , OrderDetailsService.getInstance().sumTotalMoney());
        request.getRequestDispatcher("ThanhToan.jsp").forward(request , response);

    }
}
