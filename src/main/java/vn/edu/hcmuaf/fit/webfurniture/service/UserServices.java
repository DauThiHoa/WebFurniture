package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.dao.UserDao;



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
        return UserDao.getInstance().checkLogin(email, password);
    }

    public boolean register(String username, String password, String email){
        System.out.println("userService");
        return UserDao.getInstance().register(username, password,email);

    }

}
