package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.dao.ProductDetailsDao;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ContactService {
    private static ContactService instance ;

    public static ContactService getInstance() {
        if (instance == null ){
            instance = new ContactService();
        }
        return instance;
    }
    public ContactService(){

    }
//    public List <ProductDetails> getAll () {
//        return JDBIConnector.get().withHandle(handle -> {
//            return handle.createQuery("select * from productdetails")
//                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
//        });
//    }

    public  boolean addContact( String name, String email, String content) {
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum += h.createUpdate("INSERT INTO contact ( `name` , email , content ) VALUES (?,?,?)")
                    .bind(0 , name )
                    .bind(1 , email)
                    .bind(2 , content) .execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }

//    public static void main(String[] args) {
//       List<ProductDetails> se =  searchName ("G");
//        System.out.println(se.toString());
//    }
}
