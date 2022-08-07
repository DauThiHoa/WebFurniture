package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.admin.ProfileService;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;
import vn.edu.hcmuaf.fit.webfurniture.service.ReviewProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ShowProductDetailsListController", value = "/ProductDetails")
public class ShowProductDetailsListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);
        request.setAttribute("result", "Qúy khách đã đăng kí nhận tin thành công");

        request.setAttribute("productDetailsAllName" , ProductDetailsService.getInstance().getAllName(name));
        System.out.println(name);
        String id = request.getParameter("id" );
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

           request.setAttribute("productDetails" , ProductDetailsService.getInstance().getById(id));
           request.setAttribute("ProductDetailsReview" , ReviewProductDetailsService.getInstance().getAll());
           request.setAttribute("maxQuantity" , ProductDetailsService.getInstance().maxQuantity(id));

//      String nameCustomer = "Name Customer";
//      request.setAttribute("nameCustomer" , ReviewProductDetailsService.getInstance().nameCustomer());

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("nameCustomer");
        if (user == null) {
            user = User.getInstance();
        }
        String nameCustomer = user.getUsername();
        session.setAttribute("nameCustomer" , nameCustomer); // add session cart

        System.out.println(nameCustomer);
        request.setAttribute("count" , ReviewProductDetailsService.getInstance().count());

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        request.getRequestDispatcher("ProductDetails.jsp").forward(request , response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request , response);
    }

}
