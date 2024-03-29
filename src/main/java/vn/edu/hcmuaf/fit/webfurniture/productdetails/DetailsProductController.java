package vn.edu.hcmuaf.fit.webfurniture.productdetails;

import vn.edu.hcmuaf.fit.webfurniture.admin.ProfileService;
import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.dao.OrderDao;
import vn.edu.hcmuaf.fit.webfurniture.payment.OrderDetailsService;
import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DetailsProductController", value = "/paymentAddProductDetails")
public class DetailsProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//      String idProductDetails =  request.getParameter("idProductDetails");
//      request.setAttribute("ProductDetailsAll" , OrderDetailsService.getInstance().getProductDetails(idProductDetails));

        HttpSession sessionUser = request.getSession();

        if ((sessionUser.getAttribute("auth")) == null) {
            response.sendRedirect("/WebFurniture_war_exploded/login");
            sessionUser.setAttribute("auth" , "");
            return;
        }
        if (sessionUser.getAttribute("cart") == null) {
            response.sendRedirect("/WebFurniture_war_exploded/cart");
            return;
        }

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setAttribute("OrderDetailsAll", OrderDetailsService.getInstance().getAll());
        request.setAttribute("getProductDetailsAll", OrderDetailsService.getInstance().getProductDetailsAll());
//      request.setAttribute("sumDiscount" , OrderDetailsService.getInstance().sumDiscount());

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile", profile);

        String id = request.getParameter("id");
        String quantitySold = request.getParameter("quantitySold");
        String priceNew = request.getParameter("priceNew");

        System.out.println("ID : " + id + "QUANTITY SOLD : " + quantitySold + " PRICE : " + priceNew);

        ProductDetails productDetails = ProductDetailsService.getInstance().getById(id);
        if (productDetails != null) {
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = Cart.getInstance();
            }
            if (quantitySold != null) {
                cart.setQuantitySold(Integer.parseInt(quantitySold) + cart.getQuantitySold());
            }

        cart.put(productDetails);
        session.setAttribute("cart", cart); // add session cart

            request.setAttribute("sumTotalMoney", Integer.parseInt(quantitySold) * Integer.parseInt(priceNew));
            int quantity = Integer.parseInt(quantitySold);
            int price = Integer.parseInt(priceNew);

            double sumDiscount = (quantity * price) * (quantity * 0.01);
            request.setAttribute("sumDiscount", (int) sumDiscount);

            int totalMoney = productDetails.getPriceNew() * cart.getQuantitySold() ;
            int money = quantity * price;

//            int sumList = ProductDetailsService.getInstance().sumListCart(productDetails.getLinkImage(), productDetails.getId() ,
//                    productDetails.getName(), productDetails.getPriceNew(), cart.getQuantitySold(), totalMoney);

            int sumList = ProductDetailsService.getInstance().sumListCart(productDetails.getLinkImage(), productDetails.getId() ,
                    productDetails.getName(), productDetails.getPriceNew(), quantity, money);

            ProductDetailsService.getInstance().updateQuantitySoldOneProduct(id, quantity);
            ProductDetailsService.getInstance().setMoneyOneProduct(id , quantity);

            ProductDetailsService.getInstance().setSumCart(sumList);

            // Số sản phẩm trong giỏ hàng
            int sumListCart = ProductDetailsService.getInstance().getSumCart();
            request.setAttribute("sizeListCart", sumListCart);
            String search = request.getParameter("search");
            if ( search != null) {
                request.setAttribute("search", search);
            }else {
                request.setAttribute("search", "");
            }

            boolean result = OrderDao.getInstance().create (cart);

            if (result) {
                    request.getRequestDispatcher("payment").forward(request, response);
            } else {
                    request.getRequestDispatcher("ProductDetails").forward(request, response);
            }
        }
    }
        @Override
        protected void doPost (HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {
            doGet(request, response);
        }

}
