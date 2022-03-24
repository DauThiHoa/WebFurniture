package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditProfile", value = "/Edit_Profile")
public class EditProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String block = "block";
        String none = "none";
        String display = "none";
        request.setAttribute("block", block);
        request.setAttribute("none", none);
        request.setAttribute("display", display);

        String friends = request.getParameter ("friends");
        String photos = request.getParameter ("photos");
        String comments = request.getParameter ("comments");
        String age = request.getParameter ("age");
        String username = request.getParameter ("username");
        String email = request.getParameter ("email");
        String firstname = request.getParameter ("firstname");
        String lastname = request.getParameter ("lastname");
        String address = request.getParameter ("address");
        String city = request.getParameter ("city");
        String country = request.getParameter ("country");
        String postalcode = request.getParameter ("postalcode");
        String aboutme = request.getParameter ("aboutme");
        String description = request.getParameter ("description");
        String id = request.getParameter ("id");

        System.out.println(friends + " " + photos + "" + comments + " " + age + " " + username + " " + email
                + " " + firstname + " " + lastname + " " + address + " " + city + " " + country + "" + postalcode + "" + aboutme + "" + description +" " + id);

        System.out.println(id + " == " +aboutme);
        Profile profile = ProfileService.getInstance().getProfile() ;
        request.setAttribute("profile" , profile);

        if ( !(friends.equals("")) && !(photos.equals(""))  &&  !(comments.equals("")) && !(age.equals("")) && !(username.equals(""))  &&  !(email.equals(""))
          && !(firstname.equals("")) && !(lastname.equals(""))  &&  !(address.equals("")) && !(city.equals("")) && !(country.equals(""))  &&  !(postalcode.equals(""))
        && !(aboutme.equals("")) ) {
            int result = ProfileService.getInstance().UpdateProfile(id , username, email, firstname, lastname,address,city,
                    country,postalcode,aboutme,age,friends,photos,comments,description);
            System.out.println(result);
            if (result == 1 ) {
                request.getRequestDispatcher("Profile").forward(request, response);
            } else {
                request.getRequestDispatcher("fail.jsp").forward(request, response);
            }
        }else {
            request.getRequestDispatcher("fail.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doGet(request,response);
    }
}
