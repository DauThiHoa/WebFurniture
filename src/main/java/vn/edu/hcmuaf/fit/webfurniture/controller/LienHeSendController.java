package vn.edu.hcmuaf.fit.webfurniture.controller;

import vn.edu.hcmuaf.fit.webfurniture.service.ContactService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LienHeSendController", value = "/LienHeSendController")
public class LienHeSendController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String content = request.getParameter("content");

        if ( name != "" && email != "" && content != ""){
        boolean result = ContactService.getInstance().addContact(name,email,content);
            System.out.println(result);
        if (result) {
            request.setAttribute("name" , "");
            request.setAttribute("email" , "");
            request.setAttribute("content" , "");
            request.getRequestDispatcher("LienHe").forward(request, response);
        }else {
            request.setAttribute("name" , name);
            request.setAttribute("email" , email);
            request.setAttribute("content" , content);
            request.getRequestDispatcher("LienHe").forward(request, response);
          }
        }
        else {
            request.setAttribute("name" , name);
            request.setAttribute("email" , email);
            request.setAttribute("content" , content);
            request.getRequestDispatcher("LienHe").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }
}
