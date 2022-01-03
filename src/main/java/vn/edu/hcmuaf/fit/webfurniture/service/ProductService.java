package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.Product;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ProductService {

    private static ProductService instance;

    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }

    public ProductService() {

    }

    public List<Product> getAll() {
        return (List<Product>) JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails ").mapToBean(Product.class).stream().collect(Collectors.toList());
        });
    }

}
