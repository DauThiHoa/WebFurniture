package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Customer;
import vn.edu.hcmuaf.fit.webfurniture.beans.Order;
import vn.edu.hcmuaf.fit.webfurniture.service.ReviewProductDetailsService;

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


             List<Order> order =  OrderService.getInstance().getAll();
        System.out.println(order.toString());
             ArrayList<Customer> customers = new ArrayList<Customer>();
             for ( int i = 0 ; i < order.size() ; i ++){
                 request.setCharacterEncoding("UTF-8");
                 response.setCharacterEncoding("UTF-8");
                 int id = order.get(i).getIdCustomer();
                 System.out.println(id);
                 Customer customer = OrderService.getInstance().getCustomer(id);
                 customers.add(customer);
                 System.out.println(customers.toString());
             }
//        for ( int i = 0 ; i < customers.size() ; i ++){
//            System.out.println(customers.get(i).toString());
//        }
            Customer customer = OrderService.getInstance().getCustomer();
             request.setAttribute("customer" , customers);
             request.setAttribute("order" , order);
//             request.setAttribute("haha" , "haha");
             request.getRequestDispatcher("Order.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
    }
}
