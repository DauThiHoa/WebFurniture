package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

public class Order implements Serializable {
    private static final long serialVersionUID = 1l ;
//    private int id ;
//    private User user ;
//    private List<Details> details ;
    private int idOrder ;
    private int idCustomer ;
    private double totalMoney ;
    private User user ;
    private List<Details> details ;
    private LocalDateTime dateOrder ;
    private LocalDateTime dateReceipt ;
    private String status ;

    public Order (){

    }

//    public Order(int id, User user, List<Details> details, LocalDateTime dateOrder, LocalDateTime dateReceipt) {
//        this.id = id;
//        this.user = user;
//        this.details = details;
//        this.dateOrder = dateOrder;
//        this.dateReceipt = dateReceipt;
//    }
//
//    public int getId() {
//        return id;
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public User getUser() {
//        return user;
//    }
//
//    public void setUser(User user) {
//        this.user = user;
//    }
//
//    public List<Details> getDetails() {
//        return details;
//    }
//
//    public void setDetails(List<Details> details) {
//        this.details = details;
//    }
//
//    public LocalDateTime getDateOrder() {
//        return dateOrder;
//    }
//
//    public void setDateOrder(LocalDateTime dateOrder) {
//        this.dateOrder = dateOrder;
//    }
//
//    public LocalDateTime getDateReceipt() {
//        return dateReceipt;
//    }
//
//    public void setDateReceipt(LocalDateTime dateReceipt) {
//        this.dateReceipt = dateReceipt;
//    }

    public Order(int idOrder, int idCustomer, double totalMoney, User user, List<Details> details, LocalDateTime dateOrder, LocalDateTime dateReceipt, String status) {
        this.idOrder = idOrder;
        this.idCustomer = idCustomer;
        this.totalMoney = totalMoney;
        this.user = user;
        this.details = details;
        this.dateOrder = dateOrder;
        this.dateReceipt = dateReceipt;
        this.status = status;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Details> getDetails() {
        return details;
    }

    public void setDetails(List<Details> details) {
        this.details = details;
    }

    public LocalDateTime getDateOrder() {
        return dateOrder;
    }

    public void setDateOrder(LocalDateTime dateOrder) {
        this.dateOrder = dateOrder;
    }

    public LocalDateTime getDateReceipt() {
        return dateReceipt;
    }

    public void setDateReceipt(LocalDateTime dateReceipt) {
        this.dateReceipt = dateReceipt;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "idOrder=" + idOrder +
                ", idCustomer='" + idCustomer + '\'' +
                ", totalMoney=" + totalMoney +
                ", user=" + user +
                ", details=" + details +
                ", dateOrder=" + dateOrder +
                ", dateReceipt=" + dateReceipt +
                ", status='" + status + '\'' +
                '}';
    }
}

