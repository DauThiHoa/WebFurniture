package vn.edu.hcmuaf.fit.webfurniture.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static vn.edu.hcmuaf.fit.webfurniture.mail.Mail.sendMail;

@WebServlet(name = "MailController", value = "/MailController")
public class MailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String email = request.getParameter("email");
        request.setAttribute("email" , email);

        if ( email != "" ) {
            request.setAttribute("email", "");
        }
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String subject = "ĐĂNG KÍ NHẬN TIN";
        String content = "WebFurniture xin chào quý khách !\n\n Qúy khách đã đăng kí thành công nhận tin từ trang " +
                "web nội thất WebFurniture .\n\n Bạn sẽ nhận được các thông tin mới nhất từ trang web ." +
                "\n\n Cảm ơn quý khách đã quan tâm đến trang =_=";
        boolean result = sendMail(email, subject, content);
        if(result) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        }else {
            request.getRequestDispatcher("fail.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }
}
