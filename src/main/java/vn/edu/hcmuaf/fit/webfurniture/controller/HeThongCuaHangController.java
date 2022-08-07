package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HeThongCuaHangController", value = "/HeThongCuaHang")
public class HeThongCuaHangController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        request.getRequestDispatcher("ShopSystem.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }
}
