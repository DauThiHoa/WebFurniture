package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    private static List<User> usersList = new ArrayList<User>() ;
    private String id ;
    private String username;
    private String password;
    private String fullname;
    private String email;
    private String phone;
    private String address;
    private int role;

    // none constructor

    public User() {
    }
    public static User getInstance(){
        return new User() ;
    }
    // full constructor
    public void addProductListUser (User user){
        if (!usersList.contains(user)){
            usersList.add(user);
        }
    }
    public void removeProductListUser (User user){
            usersList.remove(user);
    }

    public static List<User> getUsersList() {
        return usersList;
    }


    public static void setUsersList(List<User> usersList) {
        User.usersList = usersList;
    }

    public User(String id, String username, String password, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
    }

    public User(String username, String password, String email) {
        this.username = username;
        this.password = password;
        this.email = email;
    }

    public User(String id, String username, String password, String fullname, String email, String phone, String address, int role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.role = role;
    }

    public User(String username, String password, String fullname, String email, String phone, String address, int role) {
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.role = role;
    }
    // getter setter

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
