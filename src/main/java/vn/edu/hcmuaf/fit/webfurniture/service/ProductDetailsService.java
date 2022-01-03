package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.*;
import java.util.stream.Collectors;

public class ProductDetailsService {
    private static ProductDetailsService instance ;

    public static ProductDetailsService getInstance() {
        if (instance == null ){
            instance = new ProductDetailsService();
        }
        return instance;
    }
    public ProductDetailsService (){

    }
    public List <ProductDetails> getAll () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails").mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
}
