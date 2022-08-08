package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LienHeController", value = "/LienHe")
public class LienHeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.setAttribute("search" , "");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String content = request.getParameter("content");

        //        Số sản phẩm trong giỏ hàng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        String search = request.getParameter("search");
        if ( search != null) {
            request.setAttribute("search", search);
        }else {
            request.setAttribute("search", "");
        }

        request.setAttribute("name" , name);
        request.setAttribute("email" , email);
        request.setAttribute("content" , content);

        if ( name != "" && email != "" && content != "") {
            request.setAttribute("name", "");
            request.setAttribute("email", "");
            request.setAttribute("content", "");
        }

        request.getRequestDispatcher("Contact.jsp").forward(request, response);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }
}
