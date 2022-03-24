package vn.edu.hcmuaf.fit.webfurniture.payment;

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
//           String idProductDetails =  request.getParameter("idProductDetails");
//           request.setAttribute("ProductDetailsAll" , OrderDetailsService.getInstance().getProductDetails(idProductDetails));
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.setAttribute("OrderDetailsAll" , OrderDetailsService.getInstance().getAll());
        request.setAttribute("getProductDetailsAll" , OrderDetailsService.getInstance().getProductDetailsAll());
        request.setAttribute("sumDiscount" , OrderDetailsService.getInstance().sumDiscount());
        request.setAttribute("sumTotalMoney" , OrderDetailsService.getInstance().sumTotalMoney());


        request.getRequestDispatcher("ThanhToan.jsp").forward(request , response);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

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
