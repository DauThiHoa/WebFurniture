package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductDetailsListControllerAllProduct", value = "/ProductDetailsListAllProduct")
public class ProductDetailsListControllerAllProducts extends HttpServlet {
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

        request.setAttribute("searchName", ProductDetailsService.getInstance().searchName(search));

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String color = request.getParameter("color");
        System.out.println(color);
        request.setAttribute("getColor", ProductDetailsService.getInstance().getColor(color));

        request.setAttribute("productDetailsAllProduct", ProductDetailsService.getInstance().getAll());
        request.getRequestDispatcher("AllProducts.jsp").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request , response);
    }
}
