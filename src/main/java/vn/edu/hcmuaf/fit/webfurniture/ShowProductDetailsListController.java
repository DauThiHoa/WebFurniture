package vn.edu.hcmuaf.fit.webfurniture;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

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

//           request.setAttribute("productDetailsAll" , ProductDetailsService.getInstance().getAll());
           String id = request.getParameter("id");
           request.setAttribute("productDetails" , ProductDetailsService.getInstance().getById(id));

           request.setCharacterEncoding("UTF-8");
           response.setCharacterEncoding("UTF-8");

           request.getRequestDispatcher("BanAillen_03.jsp").forward(request , response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request , response);
    }
}
