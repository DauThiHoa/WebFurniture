package vn.edu.hcmuaf.fit.webfurniture.service;

import java.util.HashMap;
import java.util.Map;

public class UserService {
    private static UserService instance;

    private static Map<String, String> users = new HashMap<>();
    private static Map<String, String> contact = new HashMap<>();

    static {
        users.put("admin@gmail.com", "12345");
        users.put("admin123@gmail.com", "12345");
        users.put("admin12345@gmail.com", "12345");
    }

    private UserService() {

    }

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
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

    public boolean register(String username, String password, String confirm, String email, String phone, String address) {
        if (users.containsKey(username)) {
            return false;
        } else {
            users.put(username, password);
        }
        return true;
    }


}
