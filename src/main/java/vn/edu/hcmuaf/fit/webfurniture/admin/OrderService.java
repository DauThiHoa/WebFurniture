package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Information;
import vn.edu.hcmuaf.fit.webfurniture.beans.Order;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.io.Serializable;

public class OrderService implements Serializable {
    private static OrderService instance ;

    public static OrderService getInstance() {
        if (instance == null ){
            instance = new OrderService();
        }
        return instance;
    }
    public OrderService(){

    }
    public Order getAll () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(" select * from orders where idOrder = ( select max(idOrder) from orders ) ")
                    .mapToBean(Order.class).first();
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
}
