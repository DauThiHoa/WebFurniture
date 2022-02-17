package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Customer;
import vn.edu.hcmuaf.fit.webfurniture.beans.DetailedProductReview;
import vn.edu.hcmuaf.fit.webfurniture.beans.Order;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import javax.persistence.criteria.CriteriaBuilder;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;
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
    public int delete_Customer (String id) {
        int id_int = Integer.parseInt(id);
        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("delete from customer where idOrder = ? ")
                        .bind(0 , id_int ).execute());
    }
    public int delete_Order (String id) {
        int id_int = Integer.parseInt(id);
        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("delete from orders where idOrder = ? ")
                        .bind(0 , id_int ).execute());
    }

    public Customer getCustomer (int id ) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from customer where idCustomer = ? ")
                    .bind(0 , id)
                    .mapToBean(Customer.class).first();
        });
    }

    public Customer getCustomer ( ) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(" select * from customer where idOrder = ( select max(idOrder + 0) from orders )")
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
    public int update_Customer (String idOrder, String name, String bank) {
        int id = Integer.parseInt(idOrder);
        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("update customer set name = ? , bank = ?  where idOrder = ? ")
                        .bind(0 , name )
                        .bind(1 , bank )
                        .bind(2 , id )
                        .execute());
    }

    public int update_Order(String idOrder, String dateOrder, String dateReceipt, String totalMoney, String status) {
        int id = Integer.parseInt(idOrder);
        double money = Double.parseDouble(totalMoney);
        LocalDateTime dateorder = LocalDateTime.parse( dateOrder );
        LocalDateTime datereceipt = LocalDateTime.parse( dateReceipt );
        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("update orders set dateOrder = ? , dateReceipt = ? ,totalMoney = ? , status = ?  where idOrder = ? ")
                        .bind(0 , dateorder )
                        .bind(1 , datereceipt )
                        .bind(2 , money )
                        .bind(3 , status )
                        .bind(4 , id )
                        .execute());
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
