package vn.edu.hcmuaf.fit.webfurniture.dao;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDetailsDao {
    private static ProductDetailsDao instance ;

    private ProductDetailsDao (){

    }

    public static ProductDetailsDao getInstance() {
        if ( instance == null ){
            instance = new ProductDetailsDao() ;
        }
        return instance;
    }
    public List <ProductDetails> getAll (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public ProductDetails getById ( String id ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = ? ")
                    .bind (0 , id)
                    .mapToBean(ProductDetails.class).first();
        });
    }
}
