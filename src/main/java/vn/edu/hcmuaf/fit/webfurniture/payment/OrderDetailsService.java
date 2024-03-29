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
            return handle.createQuery("select * from cart")
                    .mapToBean(Details.class).stream().collect(Collectors.toList());
        });
    }

    public List <ProductDetails> getProductDetailsAll (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(" SELECT * FROM productdetails ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

//    // SUM DISCOUNT ( KHUYEN MAI )
//    public int sumDiscount(){
//        int sum = 1 ;
//        sum = JDBIConnector.get().withHandle(handle -> {
//            return handle.createQuery("SELECT SUM( discount ) FROM orderdetails WHERE idOrder = ( SELECT MAX( idOrder + 0) FROM orderdetails )")
//                    .mapTo(Integer.class).findFirst().get() / handle.createQuery("SELECT COUNT(*) FROM orderdetails" +
//                            " WHERE idOrder = ( SELECT MAX( idOrder + 0) FROM orderdetails )")
//                    .mapTo(Integer.class).findFirst().get();
//        });
//        return sum ;
//    }

    // SUM DISCOUNT ( KHUYEN MAI )
    public int sumDiscount(){
    int sum = 1 ;
    sum = JDBIConnector.get().withHandle(handle -> {
        return handle.createQuery("select sum(money) * 0.01 from cart")
                .mapTo(Integer.class).findFirst().get() ;
    });
    return sum ;
}
    // SUM TOTALMONEY ( TONG TIEN SAN PHAM )
    public int sumTotalMoney(){
            return  JDBIConnector.get().withHandle(handle -> {
                return handle.createQuery("select sum(money) from cart")
                        .mapTo(Integer.class).findFirst().get();
            });
    }

    public boolean insert(String name,String birthDay,String gender, String email, String phone, String address, String bank, String cardNumber , String method , String discountCode ,String sumDiscount ,String sumTotalMoney) {

        int idOrder = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT idOrder FROM orders  WHERE idOrder = ( SELECT MAX(idOrder + 0) FROM orders )")
                    .mapTo(Integer.class).findFirst().get() ;
        });

//        int idUser = JDBIConnector.get().withHandle(handle -> {
//            return handle.createQuery("select id from `user` where email like ? ")
//                    .bind(0, email)
//                    .mapTo(Integer.class).findFirst().get() ;
//        });
//
//        int update = JDBIConnector.get().withHandle(h -> {
//            int sum = 0 ;
//            sum += h.createUpdate("update customer set idUser = ? where email like ?")
//                    .bind(0 , idUser )
//                    .bind(1 , email )
//                    .execute();
//            // Số dòng được chèn vào
//            return sum ;
//        });
//        int ship = sumDiscount();
//        int totalMoney = sumTotalMoney();
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
                sum += h.createUpdate("insert into customer (idOrder , name , birthDay,gender, address ,phone, email" +
                                " ,bank, cardNumber , deliveryMethod , discount , ship , totalMoney) values(?,?,?,?,?,?,?,?,?,?,?,?,?)")
                        .bind(0 , idOrder )
                        .bind(1 , name )
                        .bind(2 , birthDay )
                        .bind(3 , gender )
                        .bind(4 , address)
                        .bind(5, phone)
                        .bind(6 , email)
                        .bind(7 , bank)
                        .bind(8 , cardNumber )
                        .bind( 9 ,method )
                        .bind( 10 , discountCode)
                        .bind( 11 , Integer.parseInt(sumDiscount))
                        .bind( 12 ,  Integer.parseInt(sumTotalMoney))
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
