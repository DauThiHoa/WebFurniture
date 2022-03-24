package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.admin.ProfileService;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.payment.OrderDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static vn.edu.hcmuaf.fit.webfurniture.mail.Mail.sendMail;

@WebServlet(name = "PaymentSuccessController", value = "/PaymentSuccess")
public class PaymentSuccessController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//      request.setAttribute("customerList" , CustomerService.getInstance().getAll());
//      request.setAttribute("sumTotal" , CustomerService.getInstance().sumTotal());

//      int sumDiscount = OrderDetailsService.getInstance().sumDiscount();
//      int sumTotalMoney = OrderDetailsService.getInstance().sumTotalMoney();

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

        String id = request.getParameter("id");
        String quantitySold = request.getParameter("quantitySold");
        String priceNew = request.getParameter("priceNew");

//        int quantity = Integer.parseInt(quantitySold) ;
//        int price = Integer.parseInt(priceNew) ;
//        System.out.println(quantity + "  =  " + price);
//
//        request.setAttribute("sumTotalMoney" ,quantity * price);
//        double sumDiscount_double = (quantity * price) * (quantity * 0.01);
//        request.setAttribute("sumDiscount" ,(int) sumDiscount_double) ;

        String sumDiscount = request.getParameter("sumDiscount");
        String sumTotalMoney = request.getParameter("sumTotalMoney");

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
        if ( name != "" && brithDay != "" && gender != "" && email != "" && phone != "" && address != "" && bank != "" &&
                cardNumber != "" && method != "" && discountCode != "" ) {
            boolean result = OrderDetailsService.getInstance().insert(name, brithDay, gender, email, phone, address, bank, cardNumber, method, discountCode , sumDiscount , sumTotalMoney);

            String subject = "PAYMENT SUCCESS";
            String content = "<h2 style=\"color: #1fb5d4 ; font-weight: bold\">Payment made successfully!</h2>";
            content += "<h3 style=\"color: #1fb5d4 ; font-weight: bold\">Within 5 minutes, WebFurniture will" +
                    "    contact you to confirm the delivery information via email you have provided</h3>";
            content += "<h3 style=\" font-weight: bold\">Full name :"+ name+"</h3>";
            content += "<h3 style=\" font-weight: bold\">BrithDay :"+ brithDay+"</h3>";
            content += "<h3 style=\" font-weight: bold\">Shipping fee : "+sumDiscount+"</h3>";
            content += "<h3 style=\" font-weight: bold\">Total money : "+sumTotalMoney+"</h3>";
            content += "<h3 style=\" font-weight: bold\">Payment method : Bank transfer "+bank+"</h3>";
            content += "<h3 style=\" font-weight: bold\">Card number : "+cardNumber+"</h3>";
            content += "<h3 style=\" font-weight: bold\">Delivery address : "+address+"</h3>";
            content += "<h3 style=\" font-weight: bold\">Phone number : "+phone+"</h3>";
            content += "<h3 style=\" font-weight: bold\">Transaction code : "+discountCode+"</h3>";

            boolean sendMail = sendMail(email, subject, content);

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

            request.getRequestDispatcher("/payment").forward(request , response);

            String block = "block";
            String none = "none";
            String display = "none";
            request.setAttribute("block", block);
            request.setAttribute("none", none);
            request.setAttribute("display", display);
        }
        //        request.getRequestDispatcher("ThanhToan.jsp").forward(request , response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request , response);
    }
}
