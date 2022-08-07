package vn.edu.hcmuaf.fit.webfurniture.services;

import vn.edu.hcmuaf.fit.webfurniture.dao.UserDao;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.io.Serializable;
import java.math.BigInteger;
import java.security.MessageDigest;


public class UserServices implements Serializable {
    private static UserServices instance;

    private UserServices() {

    }

    public static UserServices getInstance() {
        if (instance == null) {
            instance = new UserServices();
        }
        return instance;
    }

    public boolean checkLogin(String email, String password) {
        return UserDao.getInstance().checkLogin(email, hashPasword(password));
    }

    public boolean register(String username, String password, String email) {
        return UserDao.getInstance().register(username, hashPasword(password), email);

    }

    private String hashPasword(String pass) {
        try {
            System.out.println(pass);

            MessageDigest ma = MessageDigest.getInstance("MD5");
            ma.update(pass.getBytes());
            byte[] byteData = ma.digest();
            BigInteger number = new BigInteger(1, byteData);
            return number.toString(16);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    // Lấy id
    public int idUser(String email) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select id from `user` where email like ?")
                    .bind(0, email)
                    .mapTo(Integer.class).findFirst().get();
        });
    }

    // Lấy user
    public String userName(String email) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select username from `user` where email like ?")
                    .bind(0, email)
                    .mapTo(String.class).findFirst().get();
        });
    }
    public int updatePassword (String email , String password) {
        return UserDao.getInstance().updatePassword(email,hashPasword(password));
    }

}

