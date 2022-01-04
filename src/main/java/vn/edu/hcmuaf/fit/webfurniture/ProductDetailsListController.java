package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductDetailsListController", value = "/ProductDetailsList")
public class ProductDetailsListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           request.setAttribute("productDetails" , ProductDetailsService.getInstance().getId());
           request.setAttribute("productDetailsSanPhamNoiBat2" , ProductDetailsService.getInstance().getIdSp2());
           request.setAttribute("productDetailsSanPhamNoiBat3" , ProductDetailsService.getInstance().getIdSp3());
           request.setAttribute("productDetailsSanPhamNoiBat4" , ProductDetailsService.getInstance().getIdSp4());
           request.setAttribute("productDetailsSanPhamNoiBat5" , ProductDetailsService.getInstance().getIdSp5());
           request.setAttribute("productDetailsSanPhamNoiBat6" , ProductDetailsService.getInstance().getIdSp6());
           request.setAttribute("productDetailsSanPhamNoiBat7" , ProductDetailsService.getInstance().getIdSp7());
           request.setAttribute("productDetailsSanPhamNoiBat8" , ProductDetailsService.getInstance().getIdSp8());
           request.setAttribute("productDetailsSanPhamNoiBat9" , ProductDetailsService.getInstance().getIdSp9());
           request.setAttribute("productDetailsSanPhamNoiBat10" , ProductDetailsService.getInstance().getIdSp10());
           request.setAttribute("productDetailsSanPhamNoiBat11" , ProductDetailsService.getInstance().getIdSp11());
           request.setAttribute("productDetailsSanPhamNoiBat12" , ProductDetailsService.getInstance().getIdSp12());
           request.setAttribute("productDetailsSanPhamNoiBat13" , ProductDetailsService.getInstance().getIdSp13());
           request.getRequestDispatcher("HomePage.jsp").forward(request , response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request , response);
    }
}
