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
            return handle.createQuery("select * from productdetails order by priceNew + 0 asc")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

    public List<ProductDetails> getListPriceZA (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails order by priceNew + 0 desc")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

    public List<ProductDetails> getList500000 (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where priceNew + 0 < 500000 ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

    public List<ProductDetails> getList1000000 (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where priceNew + 0 >= 500000 and priceNew + 0 < 1000000 ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List<ProductDetails> getList1500000 (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where priceNew + 0 < 1500000 and priceNew + 0 >= 1000000 ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List<ProductDetails> getList2000000 (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where priceNew + 0 >= 1500000 and priceNew + 0 < 2000000 ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List<ProductDetails> getList2500000 (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where priceNew + 0 < 2500000 and priceNew + 0 >= 2000000 ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List<ProductDetails> getList2501000 (){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where priceNew + 0 >= 2500000")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List<ProductDetails> searchName ( String name ){
        String name_result = "%" + name + "%";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where `name` like ? ")
                    .bind(0 , name_result)
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

//    public static void main(String[] args) {
//       List<ProductDetails> se =  searchName ("G");
//        System.out.println(se.toString());
//    }
}
