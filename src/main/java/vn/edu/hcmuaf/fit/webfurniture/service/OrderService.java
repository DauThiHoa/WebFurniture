package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.dao.OrderDao;

public class OrderService {
  private static  OrderService instance ;

  private OrderService(){

  }
    public static OrderService getInstance(){
        if ( instance == null ){
            instance = new OrderService();
        }
        return instance ;
    }
    public boolean createOrder ( Cart cart  ){
        OrderDao orderDao = OrderDao.getInstance ();
        return  orderDao.create( cart);
    }
}
