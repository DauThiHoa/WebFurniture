package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.service.NewCommentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "NewCommentController", value = "/NewCommentController")
public class NewCommentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        request.setAttribute("NewCommentList" , NewCommentService.getInstance().getAll());
        request.setAttribute("sumNewComment" , NewCommentService.getInstance().sumNewComment());

        String nameCustomer = request.getParameter("nameCustomer");
        String emailCustomer = request.getParameter("emailCustomer");
        String content = request.getParameter("content");

        if ( nameCustomer != "" && emailCustomer != "" && content != ""){
            boolean result = NewCommentService.getInstance().addNewComment(nameCustomer,emailCustomer,content);
//            System.out.println(result);
            if (result) {
                request.setAttribute("nameCustomer" , "");
                request.setAttribute("emailCustomer" , "");
                request.setAttribute("content" , "");
                request.getRequestDispatcher("TinTuc").forward(request, response);
            }else {
                request.setAttribute("nameCustomer" , nameCustomer);
                request.setAttribute("emailCustomer" , emailCustomer);
                request.setAttribute("content" , content);
                request.getRequestDispatcher("TinTuc").forward(request, response);
            }
        }
        else {
            request.setAttribute("nameCustomer" , nameCustomer);
            request.setAttribute("emailCustomer" , emailCustomer);
            request.setAttribute("content" , content);
            request.getRequestDispatcher("TinTuc").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }
}
