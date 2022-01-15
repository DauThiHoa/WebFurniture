package vn.edu.hcmuaf.fit.webfurniture.payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class InsertCustomer extends HttpServlet {

    /**
     * Processes requests for both HTTP &lt;code&gt;GET&lt;/code&gt; and &lt;code&gt;POST&lt;/code&gt;
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            try {
                // Lay gia tri tu nguoi dung nhap vao
                String name = request.getParameter("firstname");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                String address = request.getParameter("address");
                String bank = request.getParameter("cardname");
                String cardNumber = request.getParameter("cardnumber");
                String delivery = request.getParameter("delivery");
                String store = request.getParameter("store");
//                int age = Integer.parseInt(request.getParameter("txtAge"));

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/webfurniture" ,"root","");
                PreparedStatement pst = conn.prepareStatement("insert into customer (name , address ,phone, email ,bank, cardNumber, deliveryMethod ) values(?,?,?,?,?,?,?)");
                pst.setString(1, name);
                pst.setString(2, address);
                pst.setString(3, phone);
                pst.setString(4, email);
                pst.setString(5, bank);
                pst.setString(6, cardNumber);
                pst.setString(7, delivery);
//                pst.setInt(2, age);
                pst.executeUpdate();
                request.setAttribute("add", "Add Student Successfully!");
                RequestDispatcher dis = request.getRequestDispatcher("");
                dis.forward(request, response);
            } catch (Exception e) {
            }

    }

    // &lt;editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code."&gt;
    /**
     * Handles the HTTP &lt;code&gt;GET&lt;/code&gt; method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP &lt;code&gt;POST&lt;/code&gt; method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet( request,  response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {

        return "Short description";
    }// &lt;/editor-fold&gt;

}