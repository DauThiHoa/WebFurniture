package vn.edu.hcmuaf.fit.webfurniture.beans;

public class Details {
     private String idOrderDetails ;
     private String idOrder ;
     ProductDetails productDetails ;
     private int quantitySold ;
     private int price ;
     private int discount ;
     private int totalMoney ;

     public Details( ) {
     }

     public Details(String idOrderDetails, String idOrder, ProductDetails productDetails, int quantitySold, int price, int discount, int totalMoney) {
          this.idOrderDetails = idOrderDetails;
          this.idOrder = idOrder;
          this.productDetails = productDetails;
          this.quantitySold = quantitySold;
          this.price = price;
          this.discount = discount;
          this.totalMoney = totalMoney;
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

     public ProductDetails getProductDetails() {
          return productDetails;
     }

     public void setProductDetails(ProductDetails productDetails) {
          this.productDetails = productDetails;
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
          return totalMoney;
     }

     public void setTotalMoney(int totalMoney) {
          this.totalMoney = totalMoney;
     }
}
