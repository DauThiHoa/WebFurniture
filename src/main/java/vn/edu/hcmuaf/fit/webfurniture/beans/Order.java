package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Order implements Serializable {
    private int id ;
    private User user ;
    private List<Details> details ;
    private Date dateOrder ;
    private Date dateReceipt ;

    public Order (){

    }

    public Order(int id, User user, List<Details> details, Date dateOrder, Date dateReceipt) {
        this.id = id;
        this.user = user;
        this.details = details;
        this.dateOrder = dateOrder;
        this.dateReceipt = dateReceipt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Date getDateOrder() {
        return dateOrder;
    }

    public void setDateOrder(Date dateOrder) {
        this.dateOrder = dateOrder;
    }

    public Date getDateReceipt() {
        return dateReceipt;
    }

    public void setDateReceipt(Date dateReceipt) {
        this.dateReceipt = dateReceipt;
    }
}
