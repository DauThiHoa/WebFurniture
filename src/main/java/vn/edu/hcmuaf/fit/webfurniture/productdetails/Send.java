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
        System.out.println(title);
        System.out.println(evaluate);
        System.out.println(nameCustomer);
        System.out.println(content);
        System.out.println(linkImage);
        System.out.println(id);
        if ( title != null && evaluate != null && nameCustomer != null && content != null && linkImage != null && id != null ) {
            boolean result = ReviewProductDetailsService.getInstance().createrReview(title, evaluate,nameCustomer, content, linkImage, id);
            if (result) {
                request.setAttribute("name", name);
                request.setAttribute("ProductDetailsReview" , ReviewProductDetailsService.getInstance().getAll());
                request.setAttribute("count" , ReviewProductDetailsService.getInstance().count());
                request.getRequestDispatcher("/ProductDetails").forward(request, response);
                System.out.println("m");
            } else {
                request.getRequestDispatcher("fail.jsp").forward(request, response);
                System.out.println("fail1");
            }
        } else {
            request.getRequestDispatcher("fail.jsp").forward(request, response);
            System.out.println("fail2");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          doGet(request,response);
    }
}
