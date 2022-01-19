package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.dao.ProductDetailsDao;
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

    public ProductDetails getProductDetails ( String id ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = ? ")
                    .bind (0 , id)
                    .mapToBean(ProductDetails.class).first();
        });
    }

    public ProductDetails getById(String id ) {

        return ProductDetailsDao.getInstance ().getById (id);
    }

    public int delete(String id) {

        return ProductDetailsDao.getInstance().delete(id);
    }

    public int update(String id, String name, String description, String priceNew, String priceOld, String quantity, String status) {
        return ProductDetailsDao.getInstance().update(id, name, description, priceNew, priceOld, quantity, status);
    }
}
