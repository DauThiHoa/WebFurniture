package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Information;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Edit_Information", value = "/Edit_Information")
public class Edit_Information extends HttpServlet {
    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     * show information of productDetails with id
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String id = request.getParameter("id");
        String Company = request.getParameter("Company");
        String Address = request.getParameter("Address");
        String Hotline = request.getParameter("Hotline");
        String Email = request.getParameter("Email");
        String Copyright = request.getParameter("Copyright");
        String Facebook = request.getParameter("Facebook");
        String Twitter = request.getParameter("Twitter");
        String Youtube = request.getParameter("Youtube");
        String Instagram = request.getParameter("Instagram");

        Profile profile = ProfileService.getInstance().getProfile();
        request.setAttribute("profile" , profile);

     int update = InformationService.getInstance().update(id,Company,Address,Hotline,Email,Copyright,Facebook,Twitter,Youtube,Instagram);

     if ( update == 1 ) {
         Information information = InformationService.getInstance().getAll();
         request.setAttribute("information" , information);
         request.getRequestDispatcher("/Information").forward(request, response);
     }else{
         request.getRequestDispatcher("fail.jsp").forward(request, response);
     }


    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     * Delete productdetails with id
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
    }

}
