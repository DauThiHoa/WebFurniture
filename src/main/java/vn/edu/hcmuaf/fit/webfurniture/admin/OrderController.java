package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Customer;
import vn.edu.hcmuaf.fit.webfurniture.beans.ListCustomerOrder;
import vn.edu.hcmuaf.fit.webfurniture.beans.Order;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "OrderController", value = "/Order")
public class OrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

//             Order order = OrderService.getInstance().getAll();

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile", profile);

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart", sumListCart);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        List<Order> order = OrderService.getInstance().getAll();
        ArrayList<Customer> customers = new ArrayList<Customer>();
        System.out.println(1);
        for (int i = 0; i < order.size(); i++) {
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            int id = order.get(i).getIdCustomer();
            Customer customer = OrderService.getInstance().getCustomer(id);
            customers.add(customer);
        }
//             Customer customer = OrderService.getInstance().getCustomer();

        if (order.isEmpty() || customers.isEmpty()) {
            request.setAttribute("customer", "null");
            request.setAttribute("order", "null");
            System.out.println(order);
            System.out.println(customers);
        } else {
            request.setAttribute("customer", customers);
            request.setAttribute("order", order);
        }
//             request.setAttribute("haha" , "haha");
        List<ListCustomerOrder> listCustomerOrder = OrderService.getInstance().getListCustomerOrder();
        request.setAttribute("listCustomerOrder", listCustomerOrder);

        request.getRequestDispatcher("Order.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
