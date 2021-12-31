package vn.edu.hcmuaf.fit.webfurniture.dao;

import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.db.DBConnect;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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

    public boolean checkLogin(String username, String password) {
        Statement statement = DBConnect.getInstance().get();
        if (statement == null) return false;
        try {
            ResultSet rs = statement.executeQuery("SELECT * FROM user WHERE username = " + username + "AND password = " + password + " ");
            User user = null;
            if (rs.next()) {
                user = new User();
                user.setFullname(rs.getString("name"));
                user.setUsername(rs.getString("username"));

            }
            if (user == null || user.getUsername().equals(username) || rs.next()) {
                return false;
            } else {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }

    public boolean register(String username, String password, String email, String phone, String address) {
        Statement statement = DBConnect.getInstance().get();
        if (statement == null) return false;
        try {
            int rs = statement.executeUpdate(" insert into user( username , password )  values ( '" + username + "'  ,' " + password + " ' )  ");
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }
}
