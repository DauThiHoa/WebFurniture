package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;

public class Product implements Serializable {
    private static final long serialVersionUID = 1l;
    private String id;
    private String name;
    private String description;
    private int price;
    private int sellPrice;
    private int quantity;
    private String img;

    public Product() {

    }

    public Product(String id, String name, String description, int price, int sellPrice, int quantity, String img) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.sellPrice = sellPrice;
        this.quantity = quantity;
        this.img = img;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(int sellPrice) {
        this.sellPrice = sellPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
