package vn.edu.hcmuaf.fit.webfurniture.services;

import vn.edu.hcmuaf.fit.webfurniture.dao.UserDao;
import java.math.BigInteger;
import java.security.MessageDigest;



public class UserServices {
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

    public boolean register(String username, String password, String email){
        return UserDao.getInstance().register(username, hashPasword(password) ,email);

    }
private String hashPasword(String pass) {
        try {
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

}
