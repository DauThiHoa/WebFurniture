package vn.edu.hcmuaf.fit.webfurniture.dao;

import vn.edu.hcmuaf.fit.webfurniture.db.DBConnect;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                System.out.println("UserDao, true");
                return true;
            } else {
                System.out.println("UserDao, false");
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    public String checkLoginCart (String email, String password) {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                System.out.println(email);
                return email;
            } else {
                System.out.println(email);
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
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

    public int updatePassword (String email , String password) {
        System.out.println("EMAIL : " + email + "PASSWORD: " + password);
        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("update `user` set `password` = ? where email like ?")
                        .bind(0 , password )
                        .bind(1 , email )
                        .execute());
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
        String sql = "INSERT INTO user(username, password, email) VALUES(?,?,?)";
        int size = getSize();

        int test = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT COUNT(*) FROM `user` WHERE email like ?")
                    .bind(0,email)
                    .mapTo(Integer.class).findFirst().get() ;
        });
        if (test >= 1 ){
            return false;
        }else {
            System.out.println(username);
            System.out.println(password);
            System.out.println(email);
            try {
                PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, next_id);
                stm.setString(1, username);
                stm.setString(2, password);
                stm.setString(3, email);
                stm.executeUpdate();
                System.out.println("true");
                return true;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }
        }

    }
//    select count(*) from `user`
//    select count(*)/100 from `user`
    public int sumUser (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*) from `user`")
                    .mapTo(Integer.class).findFirst().get() ;
        });
    }
    public Double countUser (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*)/100 from `user`")
                    .mapTo(Double.class).findFirst().get() ;
        });
    }

}
