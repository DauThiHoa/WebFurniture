package vn.edu.hcmuaf.fit.webfurniture.beans;

public class Details {
     private String id ;
     private String idOrder ;
     ProductDetails productDetails ;
     private int quantity ;
     private int price ;
     private int discount ;
     private int totalMoney ;

     public Details( ) {
     }

     public Details(String id, String idOrder, ProductDetails productDetails, int quantity, int price, int discount, int totalMoney) {
          this.id = id;
          this.idOrder = idOrder;
          this.productDetails = productDetails;
          this.quantity = quantity;
          this.price = price;
          this.discount = discount;
          this.totalMoney = totalMoney;
     }

     public String getId() {
          return id;
     }

     public void setId(String id) {
          this.id = id;
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

     public int getQuantity() {
          return quantity;
     }

     public void setQuantity(int quantity) {
          this.quantity = quantity;
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
