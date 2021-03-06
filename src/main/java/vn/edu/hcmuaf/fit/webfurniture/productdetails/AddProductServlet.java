package vn.edu.hcmuaf.fit.webfurniture.productdetails;

import vn.edu.hcmuaf.fit.webfurniture.admin.ProfileService;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddProductServlet", value = "/add-Product")
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

        request.setAttribute("linkImage" ,"" );
        request.setAttribute("category" ,"" );
        request.setAttribute("id" ,"" );
        request.setAttribute("priceNew" ,"" );
        request.setAttribute("priceOld" ,"" );
        request.setAttribute("name" ,"" );
        request.setAttribute("trademark" ,"" );
        request.setAttribute("production" ,"" );
        request.setAttribute("description" ,"" );
        request.setAttribute("produtGroups" ,"" );
        request.setAttribute("quantity" ,"" );

        request.setAttribute("color" ,"" );
        request.setAttribute("size" ,"" );
        request.setAttribute("weight" ,"" );
        request.setAttribute("material" ,"" );
        request.setAttribute("design" ,"" );

        String linkImage = request.getParameter ("linkImage"); // Link Image
        String category = request.getParameter ("category"); // Loai Home, ...
        String id = request.getParameter ("id");
        String priceNew = request.getParameter ("priceNew");
        String priceOld = request.getParameter ("priceOld");
        String name = request.getParameter ("name");
        String trademark = request.getParameter ("trademark"); // Thuong hieu
        String production = request.getParameter ("production");
        String description = request.getParameter ("description");
        String produtGroups = request.getParameter ("produtGroups"); // m?? nh??m s???n ph???m
        String quantity = request.getParameter ("quantity");

        String color = request.getParameter ("color"); // Thuong hieu
        String size = request.getParameter ("size");
        String weight = request.getParameter ("weight");
        String material = request.getParameter ("material"); // m?? nh??m s???n ph???m
        String design = request.getParameter ("design");

        // status
        String still = request.getParameter ("still"); // m?? nh??m s???n ph???m
        String over = request.getParameter ("over");
        String status ;
        if (still != null ){
            status = still;
        }else {
            status = over;
        }


        //        S??? s???n ph???m trong gi??? h??ng
        int sumListCart = ProductDetailsService.getInstance().getSumCart();
        request.setAttribute("sizeListCart" , sumListCart);

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        if ( !(id.equals("")) &&  !(name.equals("")) && !(description.equals("")) && !(trademark.equals("")) && !(production.equals("")) &&
                !(priceOld.equals("")) && !(linkImage.equals("")) && !(quantity.equals("")) &&  !(priceNew.equals("")) && !(status.equals(""))
        && produtGroups != null && category != null && !(color.equals("")) && !(size.equals("")) && !(weight.equals("")) &&  !(material.equals("")) && !(design.equals(""))) {

            boolean result = ProductDetailsService.getInstance().addProductDetails(id, name, description, trademark, production,
                    priceOld, linkImage, quantity, priceNew, status, produtGroups, category , color , size , weight , material , design);
            if (result) {
                request.getRequestDispatcher("addProduct.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("fail.jsp").forward(request, response);
            }
        }else {
            request.setAttribute("linkImage" ,linkImage );
            request.setAttribute("category" ,category );
            request.setAttribute("id" ,id );
            request.setAttribute("priceNew" ,priceNew );
            request.setAttribute("priceOld" ,priceOld );
            request.setAttribute("name" ,name );
            request.setAttribute("trademark" ,trademark );
            request.setAttribute("production" ,production );
            request.setAttribute("description" ,description );
            request.setAttribute("produtGroups" ,produtGroups );
            request.setAttribute("quantity" ,quantity );

            request.setAttribute("color" ,color );
            request.setAttribute("size" ,size );
            request.setAttribute("weight" ,weight );
            request.setAttribute("material" ,material );
            request.setAttribute("design" ,design );

            request.getRequestDispatcher("addProduct.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
    }
}
