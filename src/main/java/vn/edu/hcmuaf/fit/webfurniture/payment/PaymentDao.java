package vn.edu.hcmuaf.fit.webfurniture.payment;

import org.jdbi.v3.core.result.ResultBearing;
import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.Customer;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

public class PaymentDao {
    private static PaymentDao instance ;

    private PaymentDao(){
    }
    public static PaymentDao getInstance() {
        if (instance == null ){
           instance = new PaymentDao();
        }
        return instance;
    }

    public boolean create(User user, Customer customer) {
        int orderId = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT idOrder FROM orders WHERE idOrder = ( SELECT MAX(idOrder) FROM orders )")
                    .mapTo(Integer.class).findFirst().get() ;
        });
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
                sum += h.createUpdate("INSERT INTO customer (name , address ,phone, email ,bank, cardNumber, deliveryMethod , discount,ship,totalMoney) VALUES (?,?,?,?,?,?,?,?,?,?)")
//                        .bind(0 , orderId )
                        .bind(0 , customer.getName())
                        .bind(1 , customer.getAddress())
                        .bind(2, customer.getPhone())
                        .bind(3 ,customer.getEmail() )
                        .bind(4 , customer.getBank())
                        .bind(5 , customer.getCardNumber())
                        .bind(6 ,customer.getDeliveryMethod() )
                        .bind(7 ,customer.getDiscount() )
                        .bind(8 ,customer.getShip() )
                        .bind(9 , customer.getTotalMoney()).execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }
}
