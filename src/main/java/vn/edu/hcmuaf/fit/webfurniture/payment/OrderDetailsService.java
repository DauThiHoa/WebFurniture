package vn.edu.hcmuaf.fit.webfurniture.payment;

import vn.edu.hcmuaf.fit.webfurniture.beans.Details;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.dao.ProductDetailsDao;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class OrderDetailsService {
    private static OrderDetailsService instance ;

    public static OrderDetailsService getInstance() {
        if (instance == null ){
            instance = new OrderDetailsService();
        }
        return instance;
    }
    public OrderDetailsService(){
    }

    public List <Details> getAll () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from orderdetails").mapToBean(Details.class).stream().collect(Collectors.toList());
        });
    }

    public List <ProductDetails> getProductDetailsAll (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(" SELECT * FROM productdetails ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public ProductDetails getProductDetailsID (String idProductDetails){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(" SELECT * FROM productdetails where id in ( select idProductDetails from orderdetails where idProductDetails = ?)")
                    .bind(0,idProductDetails )
                    .mapToBean(ProductDetails.class).first();
//            .mapToBean(Details.class).stream().collect(Collectors.toList());
        });
    }
    public String getProductDetails (String idProductDetails){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select linkImage from productdetails where id in ( select idProductDetails from orderdetails where idProductDetails = ?)")
                    .bind(0,idProductDetails ).toString();
//                    .execute();
        });
    }


//    public Details getById(String id ) {
//        return ProductDetailsDao.getInstance ().getById (id);
//    }

//    public int delete(String id) {
//        return ProductDetailsDao.getInstance().delete(id);
//    }
}
