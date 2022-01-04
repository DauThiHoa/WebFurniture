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
    public List <ProductDetails> getId () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp1' ").mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp2 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp2' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp3 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp3' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp4 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp4' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp5 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp5' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp6 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp6' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp7 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp7' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp8 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp8' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp9 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp9' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp10 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp10' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp11 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp11' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp12 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp12' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List <ProductDetails> getIdSp13 () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = 'sp13' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

    public ProductDetails getById(String id ) {
        return ProductDetailsDao.getInstance ().getById (id);
    }
}
