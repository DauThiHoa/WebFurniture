package vn.edu.hcmuaf.fit.webfurniture.dao;

import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.db.DBConnect;

import java.sql.*;

public class UserDao {
    private static UserDao instance;

    private UserDao() {

    }

    public static UserDao getInstance() {
        if (instance == null) {
            instance = new UserDao();
        }
        return instance;
    }

    public boolean checkLogin(String email, String password) {
        // Statement statement = DBConnect.getInstance().get();
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean getUserByID(String id) {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM user WHERE id = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

//
//        if (statement == null) return false;
//        try {
//            ResultSet rs = statement.executeQuery("SELECT * FROM user WHERE username = " + username + "AND password = " + password + " ");
//            User user = null;
//            if (rs.next()) {
//                user = new User();
//                user.setFullname(rs.getString("name"));
//                user.setUsername(rs.getString("username"));
//
//            }
//            if (user == null || user.getUsername().equals(username) || rs.next()) {
//                return false;
//            } else {
//                return true;
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return true;
    //   }

    public int getSize() {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT COUNT(*) FROM user";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            } else {
                return -1;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public boolean register(String username, String password, String email) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO user(id,username, password, email) VALUES(?,?,?,?)";
        int size = getSize();
        String next_number_id = "00000" + (size + 1);
        while (next_number_id.length() > 6) {
            next_number_id = next_number_id.substring(1);
        }
        String next_id = "USER" + next_number_id;
        //CHECK ID is EXISTS
        boolean userIsExit = getUserByID(next_id);
        while (userIsExit) {
            size++;
            next_number_id = "00000" + (size + 1);
            while (next_number_id.length() > 6) {
                next_number_id = next_number_id.substring(1);
            }
            next_id = "USER" + next_number_id;
        }
        System.out.println(next_id);
        System.out.println(username);
        System.out.println(password);
        System.out.println(email);
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, next_id);
            stm.setString(2, username);
            stm.setString(3, password);
            stm.setString(4, email);
            stm.executeUpdate();
            System.out.println("truee");
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }
}
