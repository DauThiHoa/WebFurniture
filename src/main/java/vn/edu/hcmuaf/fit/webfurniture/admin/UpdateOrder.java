package vn.edu.hcmuaf.fit.webfurniture.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet(name = "UpdateOrder", value = "/UpdateOrder")
public class UpdateOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String idOrder = request.getParameter("idOrder");
        String name = request.getParameter("name");
        String dateOrder = request.getParameter("dateOrder");
        String dateReceipt = request.getParameter("dateReceipt");
        String totalMoney = request.getParameter("totalMoney");
        String bank = request.getParameter("bank");
        String status = request.getParameter("status");

        int update_Customer = OrderService.getInstance().update_Customer(idOrder,name,bank);
        int update_Order = OrderService.getInstance().update_Order(idOrder,dateOrder,dateReceipt,totalMoney,status);

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
