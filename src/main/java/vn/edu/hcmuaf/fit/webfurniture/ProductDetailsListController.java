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



           request.getRequestDispatcher("HomePage.jsp").forward(request , response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request , response);
    }
}
