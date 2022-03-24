package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.admin.ProfileService;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;
import vn.edu.hcmuaf.fit.webfurniture.service.ReviewProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

        request.setAttribute("productDetailsAllName" , ProductDetailsService.getInstance().getAllName(name));
        System.out.println(name);
        String id = request.getParameter("id" );
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

           request.setAttribute("productDetails" , ProductDetailsService.getInstance().getById(id));
           request.setAttribute("ProductDetailsReview" , ReviewProductDetailsService.getInstance().getAll());

           String nameCustomer = "Name Customer";

           request.setAttribute("nameCustomer" , ReviewProductDetailsService.getInstance().nameCustomer());
           System.out.println(nameCustomer);
           request.setAttribute("count" , ReviewProductDetailsService.getInstance().count());
           request.getRequestDispatcher("ChiTietSanPham.jsp").forward(request , response);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request , response);
    }

}
