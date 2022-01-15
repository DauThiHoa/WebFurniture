package vn.edu.hcmuaf.fit.webfurniture.payment;

//import org.apache.catalina.filters.ExpiresFilter;
import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.Details;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
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
    // SUM TOTALMONEY ( TONG TIEN SAN PHAM )
    public int sumTotalMoney(){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT SUM( totalMoney ) FROM orderdetails WHERE idOrder = ( SELECT MAX( idOrder ) FROM orderdetails ) ")
                    .mapTo(Integer.class).findFirst().get() ;
        });
    }

    public boolean insert(String name, String email, String phone, String address, String bank, String cardNumber) {
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
                sum += h.createUpdate("insert into customer (name , address ,phone, email ,bank, cardNumber ) values(?,?,?,?,?,?)")
                        .bind(0 , name )
                        .bind(1 , address)
                        .bind(2 , phone)
                        .bind(3 , email)
                        .bind(4 ,   bank)
                        .bind(5 , cardNumber )
                        .execute();
            // Số dòng được chèn vào
            return sum ;
        });
        return true;
    }

//    public Details getById(String id ) {
//        return ProductDetailsDao.getInstance ().getById (id);
//    }

//    public int delete(String id) {
//        return ProductDetailsDao.getInstance().delete(id);
//    }

}
