package vn.edu.hcmuaf.fit.webfurniture.payment;

import vn.edu.hcmuaf.fit.webfurniture.beans.Customer;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;

public class PaymentService {
  private static PaymentService instance ;

  private PaymentService(){

  }
    public static PaymentService getInstance(){
        if ( instance == null ){
            instance = new PaymentService();
        }
        return instance ;
    }
    public boolean createPayment ( User user , Customer customer ){
        PaymentDao paymentDao = PaymentDao.getInstance ();
        return  paymentDao.create(user , customer);
    }
}
