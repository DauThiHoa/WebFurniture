package vn.edu.hcmuaf.fit.webfurniture.productdetails;

import vn.edu.hcmuaf.fit.webfurniture.service.ProductDetailsService;
import vn.edu.hcmuaf.fit.webfurniture.service.ReviewProductDetailsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Send", value = "/send")
public class Send extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

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
        if ( title != null && evaluate != null && content != null && linkImage != null && id != null ) {
            boolean result = ReviewProductDetailsService.getInstance().createrReview(title, evaluate, content, linkImage, id);
            if (result) {
                request.setAttribute("name", name);
                request.setAttribute("ProductDetailsReview" , ReviewProductDetailsService.getInstance().getAll());
                request.setAttribute("count" , ReviewProductDetailsService.getInstance().count());
                request.getRequestDispatcher("/ProductDetails").forward(request, response);
            } else {
                request.getRequestDispatcher("fail.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("fail.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          doGet(request,response);
    }
}
