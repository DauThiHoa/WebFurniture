package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Customer;
import vn.edu.hcmuaf.fit.webfurniture.beans.DetailedProductReview;
import vn.edu.hcmuaf.fit.webfurniture.beans.Order;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

public class OrderService  implements Serializable {
    private static OrderService instance ;

    public static OrderService getInstance() {
        if (instance == null ){
            instance = new OrderService();
        }
        return instance;
    }
    public OrderService(){

    }


    public Customer getCustomer (int id ) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from customer where idOrder = ? ")
                    .bind(0 , id)
                    .mapToBean(Customer.class).first();
        });
    }
    public Customer getCustomer ( ) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(" select * from customer where idOrder = ( select max(idOrder) from orders )")
                    .mapToBean(Customer.class).first();
        });
    }

    public int update(String id, String company, String address, String hotline, String email, String copyright,
                      String facebook, String twitter, String youtube, String instagram) {

        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("update information set companyName = ? , address = ? , hotline = ? , email = ?, copyright = ?, facebook = ? , twitter = ? ,youtube = ? , instagram = ? where idInformation = ? ")
                        .bind(0 , company )
                        .bind(1 , address )
                        .bind(2 , hotline )
                        .bind(3 , email )
                        .bind(4 , copyright )
                        .bind(5 , facebook )
                        .bind(6 , twitter )
                        .bind(7 , youtube )
                        .bind(8 , instagram )
                        .bind(9 , Integer.parseInt(id) )
                        .execute());
    }
    public List<Order> getAll (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from orders")
                    .mapToBean(Order.class).stream().collect(Collectors.toList());
        });
    }
//    public static void main(String[] args) {
//        List<Order> re = getInstance().getAll();
//        for ( int i = 0 ; i < re.size() ; i ++) {
//            System.out.println(re.get(i).toString());
//        }
////        Customer customer = getInstance().getCustomer();
////        System.out.println(customer.toString());
//    }
}
