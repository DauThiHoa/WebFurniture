package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductDetailsListControllerGoiSofa", value = "/ProductDetailsListGoiSofa")
public class ProductDetailsListControllerGoiSofa extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.setAttribute("getListAZ", ProductDetailsService.getInstance().getListAZ());
        request.setAttribute("getListZA", ProductDetailsService.getInstance().getListZA());
        request.setAttribute("getListPriceAZ", ProductDetailsService.getInstance().getListPriceAZ());
        request.setAttribute("getListPriceZA", ProductDetailsService.getInstance().getListPriceZA());

        request.setAttribute("getList500000", ProductDetailsService.getInstance().getList500000());
        request.setAttribute("getList1000000", ProductDetailsService.getInstance().getList1000000());
        request.setAttribute("getList1500000", ProductDetailsService.getInstance().getList1500000());
        request.setAttribute("getList2000000", ProductDetailsService.getInstance().getList2000000());
        request.setAttribute("getList2500000", ProductDetailsService.getInstance().getList2500000());
        request.setAttribute("getList2501000", ProductDetailsService.getInstance().getList2501000());

        String search = request.getParameter("search");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        List<ProductDetails> re = ProductDetailsService.getInstance().searchName(search);
        request.setAttribute("searchName", ProductDetailsService.getInstance().searchName(search));

        request.setAttribute("productDetailsGoiSofa", ProductDetailsService.getInstance().getAll());
        request.getRequestDispatcher("NoiThatDoTrangTri_Goisofa.jsp").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request , response);
    }
}
