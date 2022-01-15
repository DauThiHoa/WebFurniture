package vn.edu.hcmuaf.fit.webfurniture.payment;

import org.apache.catalina.filters.ExpiresFilter;
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
    // SUM DISCOUNT ( KHUYEN MAI )
    public int sumDiscount(){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT SUM( discount ) FROM orderdetails WHERE idOrder = ( SELECT MAX( idOrder ) FROM orderdetails )")
                    .mapTo(Integer.class).findFirst().get() / handle.createQuery("SELECT COUNT(*) FROM orderdetails WHERE idOrder = ( SELECT MAX( idOrder ) FROM orderdetails )")
                    .mapTo(Integer.class).findFirst().get();
        });
    }


//    public Details getById(String id ) {
//        return ProductDetailsDao.getInstance ().getById (id);
//    }

//    public int delete(String id) {
//        return ProductDetailsDao.getInstance().delete(id);
//    }

}
