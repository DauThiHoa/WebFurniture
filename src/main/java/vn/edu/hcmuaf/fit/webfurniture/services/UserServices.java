package vn.edu.hcmuaf.fit.webfurniture.services;

import java.util.HashMap;
import java.util.Map;

public class UserServices {
    private static UserServices instance;

    private static Map<String, String> users = new HashMap<>();
    private static Map<String, String> contact = new HashMap<>();

    static {
        users.put("admin@gmail.com", "admin");
        users.put("admin123@gmail.com", "12345");
        users.put("admin12345@gmail.com", "users");
    }

    private UserServices() {

    }

    public static UserServices getInstance() {
        if (instance == null) {
            instance = new UserServices();
        }
        return instance;
    }

    public boolean checkLogin(String username, String password) {
        if (users.containsKey(username) && users.get(username).equals(password)) {
            return true;
        } else {
            return false;
        }
    }

    public boolean register(String username, String password, String confirm) {
        if (users.containsKey(username)) {
            return false;
        } else {
            users.put(username, password);
        }
        return true;
    }

    public boolean checkForm1(String username, String password, String confirm, String email, String phone, String address) {
        if (users.containsKey(username)) {
            return false;
        } else {
            users.put(username, password);
        }
        return true;
    }

    public boolean checkForm1(String userName, String email, String phone, String message) {
        if (contact.containsKey(userName)) {
            return false;
        } else {
            contact.put(userName, email);
        }
        return true;
    }

    public boolean checkForm3(String userName, String email, String password) {
        if (users.containsKey(userName)) {
            return false;
        } else {
            users.put(userName, email);
        }
        return true;
    }

}
