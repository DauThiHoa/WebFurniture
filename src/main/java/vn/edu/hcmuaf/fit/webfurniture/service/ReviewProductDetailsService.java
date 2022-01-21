package vn.edu.hcmuaf.fit.webfurniture.service;

import org.jdbi.v3.core.result.ResultBearing;
import vn.edu.hcmuaf.fit.webfurniture.beans.Cart;
import vn.edu.hcmuaf.fit.webfurniture.beans.DetailedProductReview;
import vn.edu.hcmuaf.fit.webfurniture.beans.Details;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.dao.OrderDao;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ReviewProductDetailsService {
  private static ReviewProductDetailsService instance ;

  private ReviewProductDetailsService(){

  }
    public static ReviewProductDetailsService getInstance(){
        if ( instance == null ){
            instance = new ReviewProductDetailsService();
        }
        return instance ;
    }
    public boolean createrReview(String title, String evaluate, String content ,String linkImage, String id) {
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum += h.createUpdate("INSERT INTO detailedproductreview ( title , evaluate , nameCustomer ,emailCustomer, content,linkImage , idProductDetails) VALUES  (? , ?, ? ,? , ?, ? ,?)")
                    .bind(0 ,title)
                    .bind (1, evaluate)
                    .bind(2, "null")
                    .bind(3 , "null")
                    .bind (4, content)
                    .bind(5, linkImage)
                    .bind(6, id)
                    .execute();
            // Số dòng được chèn vào
            return sum ;
        });
        return true ;
    }

    public List<DetailedProductReview> getAll() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM detailedproductreview")
                    .mapToBean(DetailedProductReview.class).stream().collect(Collectors.toList());
        });
    }
    public int count (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT COUNT(*) FROM detailedproductreview ")
                    .mapTo(Integer.class).findFirst().get() ;
        });
    }
}
