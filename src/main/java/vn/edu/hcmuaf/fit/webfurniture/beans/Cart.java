package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;
import java.util.*;

public class Cart implements Serializable {
    private static final long serialVersionUID = 1L ;
    private static Cart instance ;
    private int id ;
    private Map <String , ProductDetails > productDetailsList ;
    private int quantitySold = 1 ;
    private int size ;
    public Cart(){
         productDetailsList = new HashMap<>( );
    }

    public int getQuantitySold() {
        return quantitySold;
    }

    public void setQuantitySold(int quantitySold) {
        this.quantitySold = quantitySold;
    }

    public static Cart getInstance(){
        return new Cart() ;
    }
    // put productDetails to cart
    public void put ( ProductDetails productDetails){
        if (productDetailsList.containsKey ( productDetails.getId()) ){
               upQuantity(productDetails.getId());
        }else {
            productDetails.setQuantitySold(quantitySold);
            productDetailsList.put(productDetails.getId(), productDetails);
        }
    }
    private void upQuantity ( String id ){
        ProductDetails productDetails = productDetailsList.get(id);
        productDetails.setQuantitySold(productDetails.getQuantitySold() + quantitySold );
    }
    // update quantity of productDetails by id
    public void updateQuantity ( String id , int quantity ){
        ProductDetails productDetails = productDetailsList.get(id);
        productDetails.setQuantitySold(quantity);
    }

    // get productDetails from cart by id
    public ProductDetails get ( String id ){
        return productDetailsList.get(id);
    }

    // remove productDetails from cart by id
    public ProductDetails remove ( String id ){
        return productDetailsList.remove(id);
    }

    // get total price of cart
    public void removeById ( String id ){
        for ( ProductDetails productDetails : productDetailsList.values()) {
            if ( productDetails.getId().equals(id)) {
                productDetailsList.remove(id);
            }
        }
    }
    public double getMoneyById ( String id ){
        double money = 0 ;
        for ( ProductDetails productDetails : productDetailsList.values()) {
            if ( productDetails.getId().equals(id)) {
               money = productDetails.getTotalMoney();
            }
        }
        return money;
    }

    // get total price of cart
    public double getTotal (){
        double totalPrice = 0 ;
        for ( ProductDetails productDetails : productDetailsList.values()){
            totalPrice += productDetails .getTotalMoney();
        }
        return totalPrice ;
    }


    // get total money of cart
    public int getTotalQuantity (){
        int totalQuantity = 0 ;
        for ( ProductDetails productDetails : productDetailsList .values()){
            totalQuantity += productDetails.getQuantitySold() ;
        }
        return totalQuantity ;
    }
    // get list of productDetails
    public Collection<ProductDetails> getProductDetailsList (){

        return productDetailsList.values();
    }

    public int getSoThuTu (){
        int  stt  = 0 ;
        for (int i = 0 ; i < productDetailsList.size() ; i ++ ){
            stt = i + 1 ;
        }
        return stt ;
    }

    public int updateQuantitySold(String id, int quantity) {
        ProductDetails productDetails = productDetailsList.get(id);
        if ( quantity < 1 || quantity > productDetails.getQuantity()){
            return productDetails.getQuantitySold();
        }
        productDetails.setQuantitySold(quantity);
        return productDetails.getQuantitySold();
    }
    public int getSizeList (){
        int  sl  = 0 ;
        for ( ProductDetails productDetails : productDetailsList.values()){
            sl += productDetails.getQuantitySold();
        }
        return sl ;
    }

    public int getSize() {
        return size;
    }
    public void setSize(int size) {
        this.size = size;
    }
}










