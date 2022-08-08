package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Customer;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateInforCustomer", value = "/UpdateInforCustomer")
public class UpdateInforCustomer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        String search = request.getParameter("search");
        if ( search != null) {
            request.setAttribute("search", search);
        }else {
            request.setAttribute("search", "");
        }

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);


        String idCustomer = request.getParameter("idCustomer");
        String name = request.getParameter("name");
        String birthDay = request.getParameter("birthDay");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String bank = request.getParameter("bank");
        String cardNumber = request.getParameter("cardNumber");
        String deliveryMethod = request.getParameter("deliveryMethod");

        String discount = request.getParameter("discount");
        String ship = request.getParameter("ship");
        String totalMoney = request.getParameter("totalMoney");

        int update_Customer = OrderService.getInstance().update_Customer(idCustomer, name, birthDay, gender, address, phone,
                email, bank , cardNumber, deliveryMethod);

        if ( update_Customer == 1) {
            int id = Integer.parseInt(idCustomer);
            Customer customer = OrderService.getInstance().getCustomer(id);
            request.setAttribute("customer", customer);

            request.getRequestDispatcher("/InforCustomer").forward(request, response);
        }else{
            request.getRequestDispatcher("fail.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         doGet(request,response);
    }
}
