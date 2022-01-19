package vn.edu.hcmuaf.fit.webfurniture.dao;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class ProductDetailsDao {
    private static ProductDetailsDao instance ;

    private ProductDetailsDao (){

    }

    public static ProductDetailsDao getInstance() {
        if ( instance == null ){
            instance = new ProductDetailsDao() ;
        }
        return instance;
    }
    public List <ProductDetails> getAll (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public ProductDetails getById ( String id ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = ? ")
                    .bind (0 , id)
                    .mapToBean(ProductDetails.class).first();
        });
    }

    public int delete(String id) {
        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("delete from productdetails where id = ? ")
                        .bind(0 , id ).execute());
    }

    public int update (String id , String name , String description , String priceNew , String priceOld , String quantity , String status) {
        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("update productdetails set `name` = ? , description = ? , priceNew = ? , priceOld = ? , quantity = ? , `status`= ? where id = ? ")
                        .bind(0 , name )
                        .bind(1 , description )
                        .bind(2 , Integer.parseInt(priceNew) )
                        .bind(3 , Integer.parseInt(priceOld) )
                        .bind(4 , Integer.parseInt(quantity) )
                        .bind(5 , status )
                        .bind(6 , id )
                        .execute());
    }
    public static List <ProductDetails> getAllName (String name ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM productdetails WHERE `name` like ? ")
                    .bind(0 , "%" + name + "%")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public static void main(String[] args) {
        List<ProductDetails> j = getAllName ("Bàn Ghế");
        System.out.println(j.toString());
    }
}
