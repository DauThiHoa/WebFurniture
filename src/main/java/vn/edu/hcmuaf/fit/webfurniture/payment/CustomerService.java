package vn.edu.hcmuaf.fit.webfurniture.payment;

//import org.apache.catalina.filters.ExpiresFilter;
import vn.edu.hcmuaf.fit.webfurniture.beans.Customer;
import vn.edu.hcmuaf.fit.webfurniture.beans.Details;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class CustomerService {
    private static CustomerService instance ;

    public static CustomerService getInstance() {
        if (instance == null ){
            instance = new CustomerService();
        }
        return instance;
    }
    public CustomerService(){
    }

    public List <Customer> getAll () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from customer").mapToBean(Customer.class).stream().collect(Collectors.toList());
        });
    }
    // TONG TIEN KHACH HANG PHAI TRA
    public int sumTotal(){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT (totalMoney + ship ) - discount FROM customer WHERE idCustomer = ( SELECT MAX(idCustomer) FROM customer )")
                    .mapTo(Integer.class).findFirst().get() ;
        });
    }

}
