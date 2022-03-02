package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.beans.NewComment;
import vn.edu.hcmuaf.fit.webfurniture.service.NewCommentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TinTucController", value = "/TinTuc")
public class TinTucController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        List<NewComment> list = NewCommentService.getInstance().getAll();
        request.setAttribute("NewCommentList" , list);
//        System.out.println(list);
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        int sum = NewCommentService.getInstance().sumNewComment();
        request.setAttribute("sumNewComment" , sum);

        String nameCustomer = request.getParameter("nameCustomer");
        String emailCustomer = request.getParameter("emailCustomer");
        String content = request.getParameter("content");

        if ( nameCustomer == "" || emailCustomer == "" || content == "" ) {
            request.setAttribute("nameCustomer", nameCustomer);
            request.setAttribute("emailCustomer", emailCustomer);
            request.setAttribute("content", content);
        }else {
            request.setAttribute("nameCustomer", "");
            request.setAttribute("emailCustomer", "");
            request.setAttribute("content", "");
        }
        request.getRequestDispatcher("TinTuc.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }
}
