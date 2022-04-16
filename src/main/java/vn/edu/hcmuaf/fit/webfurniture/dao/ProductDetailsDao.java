package vn.edu.hcmuaf.fit.webfurniture.dao;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.List;
import java.util.StringTokenizer;
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

    public int update (String id , String name , String description , String priceNew , String priceOld , String quantity , String status
            , String color, String size, String weight, String material, String design) {
        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("update productdetails set `name` = ? , description = ? , priceNew = ? , priceOld = ? , " +
                                "quantity = ? , `status`= ? , color = ? , size = ? , weight = ? , material = ? , design = ? where id = ? ")
                        .bind(0 , name )
                        .bind(1 , description )
                        .bind(2 , Integer.parseInt(priceNew) )
                        .bind(3 , Integer.parseInt(priceOld) )
                        .bind(4 , Integer.parseInt(quantity) )
                        .bind(5 , status )
                        .bind(6 , id )
                        .bind(7 , color )
                        .bind(8 , size )
                        .bind(9 , weight )
                        .bind(10 , material )
                        .bind(11 , design )
                        .execute());
    }
    public static String changeName (String nameOld ){
        StringTokenizer str = new StringTokenizer(nameOld);
        String result = null ;
        String [] array = {"tủ" ,"sofa" ,"kệ" ,"ghế","bàn", "gối","đệm","tranh","đồng","thất","cây","khăn","hoa","chậu"};
        while (str.hasMoreTokens()){
            String next = str.nextToken().toLowerCase() ;
            for ( int i = 0 ; i < array.length ; i ++){
                if (next.equals(array[i])){
                    result= array[i] ;
                }
             }
            }
        return result;
    }
    public List <ProductDetails> getAllName (String name ){
        String nameNew = changeName (name);
//        System.out.println(nameNew);
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM productdetails WHERE `name` like ? ")
                    .bind(0 , "%" + nameNew + "%")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
//    public static void main(String[] args) {
//        String name = changeName("Tủ bếp đơn giản");
//        List<ProductDetails> j = getAllName (name);
//        System.out.println(j.toString());
//    }
    public int sumProductDetails (){
    return JDBIConnector.get().withHandle(handle -> {
        return handle.createQuery("select count(*) from productdetails")
                .mapTo(Integer.class).findFirst().get() ;
    });
}
    public Double countProductDetails (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*)/100 from productdetails ")
                    .mapTo(Double.class).findFirst().get() ;
        });
    }

}
