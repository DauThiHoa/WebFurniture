package vn.edu.hcmuaf.fit.webfurniture.beans;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Cart implements Serializable {
    private static final long serialVersionUID = 1L ;
    private static Cart instance ;
    private int id ;
    private Map <String , ProductDetails > productDetailsList ;

    private Cart (){
         productDetailsList = new HashMap<>( );
    }

    public static Cart getInstance(){
        if ( instance == null ){
            instance = new Cart() ;
        }
        return instance ;
    }
    // put productDetails to cart
    public void put ( ProductDetails productDetails){
        if (productDetailsList.containsKey ( productDetails.getId()) ){
               upQuantity(productDetails.getId());
        }else {
            productDetails.setQuantitySold(1);
            productDetailsList.put(productDetails.getId(), productDetails);
        }
    }
    private void upQuantity ( String id ){
        ProductDetails productDetails = productDetailsList.get(id);
        productDetails.setQuantitySold(productDetails.getQuantitySold() + 1 );
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

}










