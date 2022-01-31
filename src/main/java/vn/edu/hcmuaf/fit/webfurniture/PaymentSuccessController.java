package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.admin.ProfileService;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.payment.CustomerService;
import vn.edu.hcmuaf.fit.webfurniture.payment.OrderDetailsService;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "PaymentSuccessController", value = "/PaymentSuccess")
public class PaymentSuccessController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setAttribute("customerList" , CustomerService.getInstance().getAll());
//        request.setAttribute("sumTotal" , CustomerService.getInstance().sumTotal());

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.setAttribute("name" , "");
        request.setAttribute("email" , "");
        request.setAttribute("phone" , "");
        request.setAttribute("address" , "");
        request.setAttribute("bank" , "");
        request.setAttribute("cardNumber" , "");
        request.setAttribute("brithDay" , "");
        request.setAttribute("discountCode" , "");

        // Lay gia tri tu nguoi dung nhap vao
        String name = request.getParameter("firstname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String bank = request.getParameter("cardname");
        String cardNumber = request.getParameter("cardnumber");
        String brithDay = request.getParameter("brithDay");
        String delivery = request.getParameter("delivery");
        String store = request.getParameter("store");
        String discountCode = request.getParameter("discountCode");
//                int age = Integer.parseInt(request.getParameter("txtAge"));
        String method ;
        if ( delivery != null ){
            method = delivery ;
        }else {
            method = store ;
        }
        String nu = request.getParameter("nu");
        String nam = request.getParameter("nam");
        String gender ;
        if ( nu != null ){
            gender = nu ;
        }else {
            gender = nam ;
        }
        if ( name != null && brithDay != null && gender != null && email != null && phone != null && address != null && bank != null && cardNumber != null && method != null && discountCode != null ) {
            boolean result = OrderDetailsService.getInstance().insert(name, brithDay, gender, email, phone, address, bank, cardNumber, method, discountCode);
            request.getRequestDispatcher("/ProductDetailsList").forward(request, response);
        }else {
            request.setAttribute("name" , name);
            request.setAttribute("email" , email);
            request.setAttribute("phone" , phone);
            request.setAttribute("address" , address);
            request.setAttribute("bank" , bank);
            request.setAttribute("cardNumber" , cardNumber);
            request.setAttribute("brithDay" , brithDay);
            request.setAttribute("discountCode" , discountCode);
            System.out.println(name);
            System.out.println(email);
            request.getRequestDispatcher("/payment").forward(request , response);
        }
        //        request.getRequestDispatcher("ThanhToan.jsp").forward(request , response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request , response);

    }
}
