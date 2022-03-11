package vn.edu.hcmuaf.fit.webfurniture.productdetails;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchAllProducts", value = "/SearchAllProducts")
public class SearchAllProducts extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("productDetailsAllProduct", ProductDetailsService.getInstance().getAll());
//        request.setAttribute("productDetailsAllProduct", "");
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

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String color = request.getParameter("color");
        System.out.println(color);
        request.setAttribute("getColor", ProductDetailsService.getInstance().getColor(color));

        request.setAttribute("searchName", ProductDetailsService.getInstance().searchName(search));
        request.getRequestDispatcher("AllProducts2.jsp").forward(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request , response);
    }
}
