package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;

public class Customer implements Serializable {
    private static final long serialVersionUID = 1L ;
    private int idCustomer ;
    private String name ;
    private String birthDay ;
    private String gender ;
    private String address ;
    private String phone ;
    private String email ;
    private String bank;
    private String cardNumber ;
    private String deliveryMethod ;
    private int discount  ;
    private int ship ;
    private int totalMoney ;

    public Customer() {
    }

    public Customer(int idCustomer, String name, String birthDay, String gender, String address, String phone, String email, String bank, String cardNumber, String deliveryMethod, int discount, int ship, int totalMoney) {
        this.idCustomer = idCustomer;
        this.name = name;
        this.birthDay = birthDay;
        this.gender = gender;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.bank = bank;
        this.cardNumber = cardNumber;
        this.deliveryMethod = deliveryMethod;
        this.discount = discount;
        this.ship = ship;
        this.totalMoney = totalMoney;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getDeliveryMethod() {
        return deliveryMethod;
    }

    public void setDeliveryMethod(String deliveryMethod) {
        this.deliveryMethod = deliveryMethod;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public int getShip() {
        return ship;
    }

    public void setShip(int ship) {
        this.ship = ship;
    }

    public int getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(int totalMoney) {
        this.totalMoney = totalMoney;
    }
}
