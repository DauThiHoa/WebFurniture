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

    public boolean checkForm1(String username, String password, String confirm, String email, String phone, String address) {
//        if ( users.containsKey(username)){
//            return false ;
//        }else {
//            users.put(username , password);
//        }
        return true;
    }

//    public boolean checkForm1(String userName, String email, String phone, String message) {
//        if (contact.containsKey(userName)) {
//            return false;
//        } else {
//            contact.put(userName, email);
//        }
//        return true;
//    }

    public boolean checkForm3(String userName, String email, String password) {
//        if ( users.containsKey(userName)){
//            return false ;
//        }else {
//            users.put(userName , email);
//        }
        return true;
    }

}
