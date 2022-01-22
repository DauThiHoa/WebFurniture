package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProductDetailsListControllerLoHoaGia", value = "/ProductDetailsListLoHoaGia")
public class ProductDetailsListControllerLoHoaGia extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("productDetailsLoHoaGia", ProductDetailsService.getInstance().getAll());
        request.getRequestDispatcher("NoiThatDoTrangTri_Lohoagia.jsp").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request , response);
    }
}
