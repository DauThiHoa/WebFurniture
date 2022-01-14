package vn.edu.hcmuaf.fit.webfurniture.payment;

import vn.edu.hcmuaf.fit.webfurniture.beans.Details;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.dao.ProductDetailsDao;
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
            return handle.createQuery("select * from orderdetails").mapToBean(Details.class).stream().collect(Collectors.toList());
        });
    }

    public Details getOrderDetails (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(" SELECT * FROM productdetails pd JOIN orderdetails od WHERE pd.id = od.idProductDetails")
                    .mapToBean(Details.class).first();
        });
    }

//    public Details getById(String id ) {
//        return ProductDetailsDao.getInstance ().getById (id);
//    }

//    public int delete(String id) {
//        return ProductDetailsDao.getInstance().delete(id);
//    }
}
