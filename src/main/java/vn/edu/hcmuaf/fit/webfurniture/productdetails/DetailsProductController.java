package vn.edu.hcmuaf.fit.webfurniture.productdetails;

import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.dao.OrderDao;
import vn.edu.hcmuaf.fit.webfurniture.payment.OrderDetailsService;
import vn.edu.hcmuaf.fit.webfurniture.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DetailsProductController", value = "/paymentAddProductDetails")
public class DetailsProductController extends HttpServlet {
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

        String id = request.getParameter("id");
        String quantitySold = request.getParameter("quantitySold");
        String priceNew = request.getParameter("priceNew");

        HttpSession session = request.getSession();
        // Xử lý đăng nhập -> lấy id khách hàng
//        if ((session.getAttribute("auth")) == null ) {
//                response.sendRedirect("/WebFurniture_war_exploded/login");
//                return;
//            }

            boolean result = OrderDao.getInstance().createProductDetails((User) session.getAttribute("auth") ,id,quantitySold,priceNew) ;

            if ( result ) {
                request.getRequestDispatcher("payment").forward(request, response);
            } else {
                request.getRequestDispatcher("ProductDetails").forward(request, response);
            }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }
}
