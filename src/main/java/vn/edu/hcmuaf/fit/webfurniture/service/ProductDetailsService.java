package vn.edu.hcmuaf.fit.webfurniture.service;

import org.jdbi.v3.core.result.ResultBearing;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.beans.User;
import vn.edu.hcmuaf.fit.webfurniture.dao.ProductDetailsDao;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.*;
import java.util.stream.Collectors;

public class ProductDetailsService {
    private static ProductDetailsService instance ;

    public static ProductDetailsService getInstance() {
        if (instance == null ){
            instance = new ProductDetailsService();
        }
        return instance;
    }
    public ProductDetailsService (){

    }
    public List <ProductDetails> getAll () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

    public ProductDetails getProductDetails ( String id ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = ? ")
                    .bind (0 , id)
                    .mapToBean(ProductDetails.class).first();
        });
    }

    public ProductDetails getById(String id ) {

        return ProductDetailsDao.getInstance ().getById (id);
    }

    public int delete(String id) {

        return ProductDetailsDao.getInstance().delete(id);
    }

    public int update(String id, String name, String description, String priceNew, String priceOld, String quantity, String status) {
        return ProductDetailsDao.getInstance().update(id, name, description, priceNew, priceOld, quantity, status);
    }

    public List <ProductDetails> getAllName (String name ){

        return  ProductDetailsDao.getInstance().getAllName(name);
    }

    public  boolean addProductDetails(String id, String name, String description, String trademark, String production,
                                      String priceOld, String linkImage, String quantity, String priceNew, String status,
                                      String produtGroups, String category) {
        int changePriceOld = Integer.parseInt(priceOld);
        int changeQuantity = Integer.parseInt(quantity);
        int changePriceNew = Integer.parseInt(priceNew);

        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum += h.createUpdate("INSERT INTO productdetails ( id , `name` , description , trademark , production ," +
                            " priceOld , linkImage , quantity , priceNew , `status` , idProductGroups , idCategory ) " +
                            "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)")
                    .bind(0 , id )
                    .bind(1 , name)
                    .bind(2 , description)
                    .bind(3 , trademark)
                    .bind(4 ,  production)
                    .bind(5 , changePriceOld )
                    .bind(6 , linkImage )
                    .bind(7 , changeQuantity)
                    .bind(8 , changePriceNew)
                    .bind(9 , status)
                    .bind(10 ,  produtGroups)
                    .bind(11, category ).execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }

    public List<ProductDetails> getListAZ (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails order by `name` asc")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List<ProductDetails> getListZA (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails order by `name` desc")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List<ProductDetails> getListPriceAZ (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails order by `name` desc")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

}
