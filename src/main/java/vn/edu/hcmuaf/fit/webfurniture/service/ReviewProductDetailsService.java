package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.DetailedProductReview;
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
    public boolean createrReview(String title, String evaluate, String nameCustomer , String content ,String linkImage, String id) {

        String email = emailCustomer (nameCustomer);

        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum += h.createUpdate("INSERT INTO detailedproductreview ( title , evaluate , nameCustomer ,emailCustomer, content,linkImage , idProductDetails) VALUES  (? , ?, ? ,? , ?, ? ,?)")
                    .bind(0 ,title)
                    .bind (1, evaluate)
                    .bind(2, nameCustomer)
                    .bind(3 , email)
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
    public String nameCustomer (){
          return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT username FROM `user` ORDER BY (id+0) DESC LIMIT 1;")
                    .mapTo(String.class).findFirst().get() ;
        });
    }
    public static String emailCustomer ( String name){
        String email = null ;
        email = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select email from `user` where username like ?")
                    .bind(0 , name)
                    .mapTo(String.class).findFirst().get() ;
        });
        return email;
    }

    public static void main(String[] args) {
        System.out.println(emailCustomer ("Đậu Hoa"));
    }
}
