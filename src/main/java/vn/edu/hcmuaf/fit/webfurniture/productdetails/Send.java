package vn.edu.hcmuaf.fit.webfurniture.productdetails;

import vn.edu.hcmuaf.fit.webfurniture.admin.ProfileService;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.service.ReviewProductDetailsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Send", value = "/send")
public class Send extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String linkImage = request.getParameter("linkImage");
        String ratTe = request.getParameter("ratTe");
        String te = request.getParameter("te");
        String bt = request.getParameter("bt");
        String tot = request.getParameter("tot");
        String ratTot = request.getParameter("ratTot");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String nameCustomer = request.getParameter("nameCustomer");

        String evaluate  ;
        if ( ratTe != null ){
            evaluate = ratTe ;
        }else  if ( te != null ){
            evaluate = te ;
        }else  if ( bt != null ){
            evaluate = bt ;
        }else  if ( tot != null ){
            evaluate = tot ;
        }else {
            evaluate = ratTot ;
        }
        if ( title != "" && evaluate != "" && nameCustomer != "" && content != "" && linkImage != "" && id != "" ) {
            boolean result = ReviewProductDetailsService.getInstance().createrReview(title, evaluate,nameCustomer, content, linkImage, id);
            System.out.println(result);
            if (result) {
                request.setAttribute("name", name);
                request.setAttribute("ProductDetailsReview" , ReviewProductDetailsService.getInstance().getAll());
                request.setAttribute("count" , ReviewProductDetailsService.getInstance().count());
                request.getRequestDispatcher("/ProductDetails").forward(request, response);

            } else {// F
                request.setAttribute("name", name);
                request.setAttribute("ProductDetailsReview" , ReviewProductDetailsService.getInstance().getAll());
                request.setAttribute("count" , ReviewProductDetailsService.getInstance().count());
                request.getRequestDispatcher("/ProductDetails").forward(request, response);
            }
        } else {// F
            request.setAttribute("name", name);
            request.setAttribute("ProductDetailsReview" , ReviewProductDetailsService.getInstance().getAll());
            request.setAttribute("count" , ReviewProductDetailsService.getInstance().count());
            request.getRequestDispatcher("/ProductDetails").forward(request, response);
        }

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
