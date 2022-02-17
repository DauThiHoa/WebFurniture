package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.dao.OrderDao;
import vn.edu.hcmuaf.fit.webfurniture.dao.ProductDetailsDao;
import vn.edu.hcmuaf.fit.webfurniture.dao.UserDao;
import vn.edu.hcmuaf.fit.webfurniture.payment.OrderDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DashboardController", value = "/Dashboard")
public class DashboardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("sumUser" , UserDao.getInstance().sumUser());
        request.setAttribute("countUser" , UserDao.getInstance().countUser());
        request.setAttribute("sumOrderDetails" , OrderDao.getInstance().sumOrderDetails());
        request.setAttribute("countOrderDetails" , OrderDao.getInstance().countOrderDetails());
        request.setAttribute("sumOrder" , OrderDao.getInstance().sumOrder());
        request.setAttribute("countOrder" , OrderDao.getInstance().countOrder());
        request.setAttribute("sumProductDetails" , ProductDetailsDao.getInstance().sumProductDetails());
        request.setAttribute("countProductDetails" , ProductDetailsDao.getInstance().countProductDetails());
        request.setAttribute("sumContact" , OrderDao.getInstance().sumContact());
        request.setAttribute("countContact" , OrderDao.getInstance().countContact());

        request.getRequestDispatcher("dashboard.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
    }
}
