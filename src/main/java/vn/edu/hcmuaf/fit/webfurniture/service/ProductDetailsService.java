package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.dao.ProductDetailsDao;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

public class ProductDetailsService implements Serializable {
    private static ProductDetailsService instance ;
    private int sumCart = 0 ;

    public int getSumCart() {
        return sumCart;
    }

    public void setSumCart(int sumCart) {
        this.sumCart = sumCart;
    }

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

    public static boolean addProductDetails(String id, String name, String description, String trademark, String production,
                                      String priceOld, String linkImage, String quantity, String priceNew, String status,
                                      String produtGroups, String category) {
        int changePriceOld = Integer.parseInt(priceOld);
        int changeQuantity = Integer.parseInt(quantity);
        int changePriceNew = Integer.parseInt(priceNew);

        int exist = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*) from productdetails where id = ? ")
                    .bind(0,id)
                    .mapTo(Integer.class).findFirst().get() ;
        });
        if (exist >= 1 ){
            return false ;
        }
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

    public static boolean addProductCart(String linkImage, String idProduct, String nameProduct, int price, int quantitySold,
                                         int money) {

        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum += h.createUpdate("INSERT INTO cart ( linkImage , idProduct , nameProduct , price , quantitySold , money) " +
                            "VALUES (?,?,?,?,?,? )")
                    .bind(0 , linkImage)
                    .bind(1 , idProduct)
                    .bind(2 , nameProduct)
                    .bind(3 , price)
                    .bind(4 , quantitySold)
                    .bind(5 , money ) .execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }

    public static boolean cartExits ( ) {

        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum += h.createUpdate("update cart set quantitySold = quantitySold + 1 where stt = ( select max(stt) from cart )") .execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }

    public static int sumListCart (String linkImage, String idProduct , String nameProduct, int price, int quantitySold, int money){
        if (addProductCart (linkImage,  idProduct ,  nameProduct,  price,  quantitySold, money ) ) {
            return JDBIConnector.get().withHandle(handle -> {
                return handle.createQuery("select sum(quantitySold) from cart")
                        .mapTo(Integer.class).findFirst().get();
            });
        }else {
            return 0 ;
        }
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
    public static List<ProductDetails> searchName ( String name ){
        String name_result = "%" + name + "%";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT * FROM webfurniture.productdetails WHERE webfurniture.productdetails.`name` LIKE ? ")
                    .bind(0 , name_result)
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public List<ProductDetails> getColor ( String color ){
        String color_result ;
        // hong vang xam xanh lam  xanh luc  cam trang den tim do
//        getColorPink getColorYellow getColorGray getColorBlue getColorGreen getColorOrange getColorWhite getColorBlack getColorPurple getColorRed
        if (color != null){
        if ( color.equals("hong")){
            return getColorPink();
        }else if ( color.equals("vang")){
            return getColorYellow();
        }else if ( color.equals("xam")){
            return getColorGray();
        }else if ( color.equals("xanh lam")){
            return getColorBlue();
        }else if ( color.equals("xanh luc")){
            return getColorGreen();
        }else if ( color.equals("cam")){
            return getColorOrange();
        }else if ( color.equals("trang")){
            return getColorWhite();
        }else if ( color.equals("den")){
            return getColorBlack();
        }else if ( color.equals("tim")){
            return getColorPurple();
        }else if ( color.equals("null")){
            return null;
        }else {
            return getColorRed();
        }}else {
            return getColorPink();
        }
    }
    public  static List<ProductDetails> getColorPink ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where description like '%hồng%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorYellow ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where description like '%vàng%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorGray ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where description like '%xám%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorBlue ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where description like '%xanh lam%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorGreen ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where description like '%xanh lục%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorOrange ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where description like '%cam%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorWhite ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where description like '%trắng%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorBlack ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where description like '%đen%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorPurple ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where description like '%tím%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorRed ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where description like '%đỏ%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

    public static void main(String[] args) {
        System.out.println("RESULT");
//        System.out.println("SUM LIST CART " + ProductDetailsService.getInstance().sumListCart());

    }

}
