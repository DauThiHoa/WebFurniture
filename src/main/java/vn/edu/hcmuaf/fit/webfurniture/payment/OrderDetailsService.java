package vn.edu.hcmuaf.fit.webfurniture.payment;

//import org.apache.catalina.filters.ExpiresFilter;

import vn.edu.hcmuaf.fit.webfurniture.beans.Details;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
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
            return handle.createQuery("SELECT SUM( discount ) FROM orderdetails WHERE idOrder = ( SELECT MAX( idOrder + 0) FROM orderdetails )")
                    .mapTo(Integer.class).findFirst().get() / handle.createQuery("SELECT COUNT(*) FROM orderdetails WHERE idOrder = ( SELECT MAX( idOrder + 0) FROM orderdetails )")
                    .mapTo(Integer.class).findFirst().get();
        });
    }
    // SUM TOTALMONEY ( TONG TIEN SAN PHAM )
    public int sumTotalMoney(){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT SUM( totalMoney ) FROM orderdetails WHERE idOrder = ( SELECT MAX( idOrder + 0 ) FROM orderdetails ) ")
                    .mapTo(Integer.class).findFirst().get() ;
        });
    }

    public boolean insert(String name,String birthDay,String gender, String email, String phone, String address, String bank, String cardNumber , String method , String discountCode) {
        int idOrder = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT idOrder FROM orders  WHERE idOrder = ( SELECT MAX(idOrder + 0) FROM orders )")
                    .mapTo(Integer.class).findFirst().get() ;
        });
        int ship = sumDiscount();
        int totalMoney = sumTotalMoney();
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
                sum += h.createUpdate("insert into customer (idOrder , name , birthDay,gender, address ,phone, email ,bank, cardNumber , deliveryMethod , discount , ship , totalMoney) values(?,?,?,?,?,?,?,?,?,?,?,?,?)")
                        .bind(0 , idOrder )
                        .bind(1 , name )
                        .bind(2 , birthDay )
                        .bind(3 , gender )
                        .bind(4 , address)
                        .bind(5, phone)
                        .bind(6 , email)
                        .bind(7 ,  bank)
                        .bind(8 , cardNumber )
                        .bind( 9 ,method )
                        .bind( 10 , discountCode)
                        .bind( 11 , ship)
                        .bind( 12 , totalMoney)
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
