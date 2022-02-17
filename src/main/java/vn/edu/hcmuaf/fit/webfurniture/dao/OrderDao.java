package vn.edu.hcmuaf.fit.webfurniture.dao;

import org.jdbi.v3.core.result.ResultBearing;
import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

public class OrderDao {
    private static OrderDao instance ;

    private OrderDao (){
    }
    public static OrderDao getInstance() {
        if (instance == null ){
           instance = new OrderDao();
        }
        return instance;
    }

    public boolean create( Cart cart) {
        int idUser = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT MAX(id + 0) FROM `user`")
                    .mapTo(Integer.class).findFirst().get() ;
        });
        int orderId = JDBIConnector.get().withHandle(h -> {
            int i = 0 ;
            ResultBearing resultBearing = h.createUpdate("INSERT INTO orders ( idCustomer , totalMoney , status) VALUES  (? , ?, ? )")
                    .bind(0 , idUser)
//                    .bind (0, "idCustomer(User)")
                    .bind(1, cart.getTotal())
                    .bind(2, "Đã đặt hàng")
                    .executeAndReturnGeneratedKeys();
            // lay id order
            return resultBearing.mapTo(Integer.class).findFirst().get();
        });
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            for (ProductDetails productDetails : cart.getProductDetailsList()){
                sum += h.createUpdate("INSERT INTO orderdetails ( idOrder , idProductDetails , quantitySold , price , discount , totalMoney  ) VALUES (?,?,?,?,?,?)")
                        .bind(0 , orderId )
                        .bind(1 , productDetails.getId())
                        .bind(2 , productDetails.getQuantitySold())
                        .bind(3 , productDetails.getPriceNew())
                        .bind(4 ,   productDetails.getPriceNew() * 5 / 100 )
                        .bind(5 , ( productDetails.getPriceNew()) * (productDetails.getQuantitySold()) ).execute();
//                        .bind(4 ,  productDetails.getPriceNew() * 10 / 100 )
//                        .bind(5 , ( productDetails.getTotalMoney()) - (productDetails.getPriceNew() * 10 / 100)).execute();
            }
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return total == cart.getProductDetailsList().size();
    }

    public boolean createProductDetails( String id , String quantitySold , String priceNew) {
        int quantity = Integer.parseInt(quantitySold);
        int price = Integer.parseInt(priceNew);
        int idUser = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT MAX(id + 0) FROM `user`")
                    .mapTo(Integer.class).findFirst().get() ;
        });
        int orderId = JDBIConnector.get().withHandle(h -> {
            int i = 0 ;
            ResultBearing resultBearing = h.createUpdate("INSERT INTO orders ( idCustomer , totalMoney , status) VALUES  (? , ? , ? )")
                    .bind(0 , idUser)
//                    .bind (0, "idCustomer(User)")
                    .bind(1, quantity * price)
                    .bind(2, "Đã đặt hàng")
                    .executeAndReturnGeneratedKeys();
            // lay id order
            return resultBearing.mapTo(Integer.class).findFirst().get();
        });
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
                sum += h.createUpdate("INSERT INTO orderdetails ( idOrder , idProductDetails , quantitySold , price , discount , totalMoney  ) VALUES (?,?,?,?,?,?)")
                        .bind(0 , orderId )
                        .bind(1 , id)
                        .bind(2 , quantity)
                        .bind(3 , price)
                        .bind(4 ,  price * 5 / 100 )
                        .bind(5 , ( price) * (quantity) ).execute();
//                        .bind(4 ,  productDetails.getPriceNew() * 10 / 100 )
//                        .bind(5 , ( productDetails.getTotalMoney()) - (productDetails.getPriceNew() * 10 / 100)).execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }
//    select count(*) from orderdetails
//    select count(*)/100 from orderdetails
//    select count(*) from orders
//    select count(*)/100 from orders

    public int sumOrder (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*) from orders")
                    .mapTo(Integer.class).findFirst().get() ;
        });
    }
    public Double countOrder (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*)/100 from orders")
                    .mapTo(Double.class).findFirst().get() ;
        });
    }
    public int sumContact (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*) from contact")
                    .mapTo(Integer.class).findFirst().get() ;
        });
    }
    public Double countContact (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*)/100 from contact")
                    .mapTo(Double.class).findFirst().get() ;
        });
    }

    public int sumOrderDetails (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*) from orderdetails")
                    .mapTo(Integer.class).findFirst().get() ;
        });
    }
    public Double countOrderDetails (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*)/100 from orderdetails")
                    .mapTo(Double.class).findFirst().get() ;
        });
    }
}
