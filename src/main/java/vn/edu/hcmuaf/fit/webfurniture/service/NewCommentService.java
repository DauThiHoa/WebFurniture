package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.NewComment;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.dao.ProductDetailsDao;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

public class NewCommentService {
    private static NewCommentService instance ;

    public static NewCommentService getInstance() {
        if (instance == null ){
            instance = new NewCommentService();
        }
        return instance;
    }
    public NewCommentService(){

    }
    public List <NewComment> getAll () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from newcomment")
                    .mapToBean(NewComment.class).stream().collect(Collectors.toList());
        });
    }
    public boolean addNewComment (String nameCustomer, String emailCustomer, String content ) {
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum += h.createUpdate("INSERT INTO newcomment ( nameCustomer , emailCustomer , content  VALUES (?,?,?)")
                    .bind(0 , nameCustomer )
                    .bind(1 , emailCustomer)
                    .bind(2 , content)
                     .execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }
    public int sumNewComment(){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*) from newcomment")
                    .mapTo(Integer.class).findFirst().get() ;
        });
    }

//    public static void main(String[] args) {
//       List<ProductDetails> se =  searchName ("G");
//        System.out.println(se.toString());
//    }
}
