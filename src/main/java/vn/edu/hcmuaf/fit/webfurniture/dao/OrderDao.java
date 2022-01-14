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

    public boolean create(User user, Cart cart) {
        int orderId = JDBIConnector.get().withHandle(h -> {
            int i = 0 ;
            ResultBearing resultBearing = h.createUpdate("INSERT INTO orders ( idCustomer , totalMoney , status) VALUES  (? , ?, ? )")
//                  .bind(0 , user.getId())
                    .bind (0, "idCustomer(User)")
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
}
