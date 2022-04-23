package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;

public class Details implements Serializable {
     private String idOrderDetails ;
     private String idOrder ;
     private String linkImage ;
     private String idProduct ;
     private String nameProduct ;
     private int price ;
     private int quantitySold ;
     private int discount ;
     private int money ;

     public Details( ) {
     }

     public Details(String linkImage, String idProduct, String nameProduct, int price, int quantitySold, int money) {
          this.linkImage = linkImage;
          this.idProduct = idProduct;
          this.nameProduct = nameProduct;
          this.price = price;
          this.quantitySold = quantitySold;
          this.money = money;
     }

     public String getLinkImage() {
          return linkImage;
     }

     public void setLinkImage(String linkImage) {
          this.linkImage = linkImage;
     }

     public String getIdProduct() {
          return idProduct;
     }

     public void setIdProduct(String idProduct) {
          this.idProduct = idProduct;
     }

     public String getNameProduct() {
          return nameProduct;
     }

     public void setNameProduct(String nameProduct) {
          this.nameProduct = nameProduct;
     }

     public int getMoney() {
          return money;
     }

     public void setMoney(int money) {
          this.money = money;
     }

     public Details(String idOrderDetails, String idOrder, String idProduct, int quantitySold, int price, int discount, int money) {
          this.idOrderDetails = idOrderDetails;
          this.idOrder = idOrder;
          this.idProduct = idProduct;
          this.quantitySold = quantitySold;
          this.price = price;
          this.discount = discount;
          this.money = money;
     }

     public String getIdOrderDetails() {
          return idOrderDetails;
     }

     public void setIdOrderDetails(String idOrderDetails) {
          this.idOrderDetails = idOrderDetails;
     }

     public String getIdOrder() {
          return idOrder;
     }

     public void setIdOrder(String idOrder) {
          this.idOrder = idOrder;
     }

     public String getIdProductDetails() {
          return idProduct;
     }

     public void setIdProductDetails(String idProduct) {
          this.idProduct = idProduct;
     }

     public int getQuantitySold() {
          return quantitySold;
     }

     public void setQuantitySold(int quantitySold) {
          this.quantitySold = quantitySold;
     }

     public int getPrice() {
          return price;
     }

     public void setPrice(int price) {
          this.price = price;
     }

     public int getDiscount() {
          return discount;
     }

     public void setDiscount(int discount) {
          this.discount = discount;
     }

     public int getTotalMoney() {
          return money;
     }

     public void setTotalMoney(int money) {
          this.money = money;
     }
}
