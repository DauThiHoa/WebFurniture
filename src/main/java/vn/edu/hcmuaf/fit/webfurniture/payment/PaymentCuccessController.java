package vn.edu.hcmuaf.fit.webfurniture.payment;

import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.Customer;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "PaymentCuccessController", value = "/payment-success")
public class PaymentCuccessController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request , response );
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get session
        HttpSession session = request.getSession();
        // Xử lý đăng nhập -> lấy id khách hàng
//        if ( session.getAttribute("auth") == null ){
//            response.sendRedirect("/WebFurniture_war_exploded/DangNhap.jsp");
//            return;
//        }

        boolean result = PaymentService.getInstance().createPayment((User) session.getAttribute("auth") ,(Customer) session.getAttribute("payment")) ;
        session.removeAttribute("payment");
        if (result) {
//            response.sendRedirect("/WebFurniture_war_exploded/ProductDetailsList");
            response.sendRedirect("/WebFurniture_war_exploded/PaymentSuccess");
        } else {
//            response.sendRedirect("/WebFurniture_war_exploded/ThanhToan.jsp");
            response.sendRedirect("/WebFurniture_war_exploded/payment");
        }
    }
}
