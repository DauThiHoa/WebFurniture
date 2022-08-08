package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.admin.ProfileService;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductDetailsListController", value = "/ProductDetailsList")
public class ProductDetailsListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           request.setAttribute("productDetailsAll" , ProductDetailsService.getInstance().getAll());

           String search = request.getParameter("search");
           if ( search != null) {
               request.setAttribute("search", search);
           }else {
               request.setAttribute("search", "");
           }
           request.setAttribute("email", "");
           request.setAttribute("password", "");
           request.setAttribute("name", "");
//         request.setAttribute("checkMail", null);

           Profile profile = ProfileService.getInstance().getProfile();
           request.setAttribute("profile" , profile);

           request.setAttribute("productDetailsSanPhamNoiBat1" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsSanPhamNoiBat2" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsSanPhamHotBanGheThuGian" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsSanPhamHotDoDungVanPhong" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsSanPhamHotNoiThatGo" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsSanPhamMoiMiNi" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsSanPhamMoi1" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsSanPhamMoi2" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsBoSuuTap1" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsBoSuuTap2" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsSanPhamKhuyenMai1" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsSanPhamKhuyenMai2" , ProductDetailsService.getInstance().getAll());
           request.setAttribute("productDetailsDacTrung" , ProductDetailsService.getInstance().getAll());

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

//        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);


        request.getRequestDispatcher("HomePage.jsp").forward(request , response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request , response);
    }
}
