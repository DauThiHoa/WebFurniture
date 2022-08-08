package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.dao.ProductDetailsDao;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

public class ProductDetailsService implements Serializable {
    private static ProductDetailsService instance;
    private int sumCart = 0;

    public int getSumCart() {
//        int result = 0 ;
//            result = JDBIConnector.get().withHandle(handle -> {
//                return handle.createQuery("select sum(quantitySold) from cart")
//                        .mapTo(Integer.class).findFirst().get();
//            });
        return sumCart;
    }

    public int getSumQuantityListProductCart() {
        int result = 0;
        result = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select sum(quantitySold) from cart")
                    .mapTo(Integer.class).findFirst().get();
        });
        return result;
    }
    public static int getPriceOneProduct(String idProduct) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select price from cart where idProduct like ?")
                    .bind(0, idProduct)
                    .mapTo(Integer.class).findFirst().get();
        });
    }

    public boolean setMoneyOneProduct(String idProduct , int quantityAffterUpadte) {
        int price = getPriceOneProduct(idProduct);
        System.out.println("HAHAHAHAHAHAHAH "+ price * quantityAffterUpadte);
        int update = JDBIConnector.get().withHandle(h -> {
            int sum = 0;
            sum += h.createUpdate("update cart set money = " + ( price * quantityAffterUpadte ) + " where idProduct like ? ")
                    .bind(0, idProduct)
                    .execute();
            // Số dòng được chèn vào
            return sum;
        });
        return true;
    }

    public int getSumQuantityListProduct (int quantity) {
        int result = getSumQuantityListProductCart() ;
        return result ;
    }

    public void setSumCart(int sumCart) {
        this.sumCart = sumCart;
    }

    public static ProductDetailsService getInstance() {
        if (instance == null) {
            instance = new ProductDetailsService();
        }
        return instance;
    }

    public ProductDetailsService() {

    }

    public List<ProductDetails> getAll() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

    public ProductDetails getProductDetails(String id) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where id = ? ")
                    .bind(0, id)
                    .mapToBean(ProductDetails.class).first();
        });
    }

    public ProductDetails getById(String id) {

        return ProductDetailsDao.getInstance().getById(id);
    }

    public int delete(String id) {

        return ProductDetailsDao.getInstance().delete(id);
    }

    public int update(String id, String name, String description, String priceNew, String priceOld, String quantity, String status
            , String color, String size, String weight, String material, String design) {
        return ProductDetailsDao.getInstance().update(id, name, description, priceNew, priceOld, quantity, status, color, size, weight, material, design);
    }

    public List<ProductDetails> getAllName(String name) {

        return ProductDetailsDao.getInstance().getAllName(name);
    }

    public static boolean addProductDetails(String id, String name, String description, String trademark, String production,
                                            String priceOld, String linkImage, String quantity, String priceNew, String status,
                                            String produtGroups, String category, String color, String size, String weight,
                                            String material, String design) {
        int changePriceOld = Integer.parseInt(priceOld);
        int changeQuantity = Integer.parseInt(quantity);
        int changePriceNew = Integer.parseInt(priceNew);

        int exist = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select count(*) from productdetails where id = ? ")
                    .bind(0, id)
                    .mapTo(Integer.class).findFirst().get();
        });
        if (exist >= 1) {
            return false;
        }
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0;
            sum += h.createUpdate("INSERT INTO productdetails ( id , `name` , description , trademark , production ," +
                            " priceOld , linkImage , quantity , priceNew , `status` , idProductGroups , idCategory " +
                            " , color , size , weight , material , design) " +
                            "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)")
                    .bind(0, id)
                    .bind(1, name)
                    .bind(2, description)
                    .bind(3, trademark)
                    .bind(4, production)
                    .bind(5, changePriceOld)
                    .bind(6, linkImage)
                    .bind(7, changeQuantity)
                    .bind(8, changePriceNew)
                    .bind(9, status)
                    .bind(10, produtGroups)
                    .bind(11, category)
                    .bind(12, color)
                    .bind(13, size)
                    .bind(14, weight)
                    .bind(15, material)
                    .bind(16, design)
                    .execute();
            // Số dòng được chèn vào
            return sum;
        });
        // size của đơn hàng
        return true;
    }

    public static boolean addProductCart(String linkImage, String idProduct, String nameProduct, int price, int quantitySold,
                                         int money) {
        int update = JDBIConnector.get().withHandle(h -> {
            int sum = 0;
            sum += h.createUpdate("update cart set quantitySold = quantitySold + 1 where idProduct = ? ")
                    .bind(0, idProduct).execute();
            // Số dòng được chèn vào
            return sum;
        });
        if (update != 1 ) {
            int total = JDBIConnector.get().withHandle(h -> {
                int sum = 0;
                sum += h.createUpdate("INSERT INTO cart ( linkImage , idProduct , nameProduct , price , quantitySold , money) " +
                                "VALUES (?,?,?,?,?,? )")
                        .bind(0, linkImage)
                        .bind(1, idProduct)
                        .bind(2, nameProduct)
                        .bind(3, price)
                        .bind(4, quantitySold)
                        .bind(5, quantitySold * price).execute();
                // Số dòng được chèn vào
                return sum;
            });
        }
            // size của đơn hàng
            return true;
    }

    public boolean removeCart ( ) {

        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum += h.createUpdate("DELETE FROM cart ") .execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }
    public boolean removeProductCart ( String idProduct) {
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum += h.createUpdate("delete from cart where idProduct like ? ")
                    .bind(0 , idProduct)
                    .execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }
    public int quantitySoldCartProduct (String idProduct){
        int result = 0 ;
        result = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select quantitySold from cart where idProduct like ? ")
                    .bind(0,idProduct)
                    .mapTo(Integer.class).findFirst().get() ;
        });
        return result;
    }

    public boolean updateQuantitySoldOneProduct ( String idProduct , int quantity) {
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum = h.createUpdate("update cart set quantitySold = ? where idProduct like ? ")
                    .bind(0 , quantity)
                    .bind(1 , idProduct)
                    .execute();
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
    public int maxQuantity (String idProduct){
        int result = 0 ;
        result = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select quantity from productdetails where id like ? ")
                    .bind(0,idProduct)
                    .mapTo(Integer.class).findFirst().get() ;
        });
        return result;
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
        if ( color.equals("hồng")){
            return getColorPink();
        }else if ( color.equals("vàng")){
            return getColorYellow();
        }else if ( color.equals("xám")){
            return getColorGray();
        }else if ( color.equals("xanh lam")){
            return getColorBlue();
        }else if ( color.equals("xanh lục")){
            return getColorGreen();
        }else if ( color.equals("cam")){
            return getColorOrange();
        }else if ( color.equals("trắng")){
            return getColorWhite();
        }else if ( color.equals("đen")){
            return getColorBlack();
        }else if ( color.equals("tím")){
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
            return handle.createQuery("select * from productdetails where color like '%hồng%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorYellow ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where color like '%vàng%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorGray ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where color like '%xám%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorBlue ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where color like '%xanh lam%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorGreen ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where color like '%xanh lục%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorOrange ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where color like '%cam%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorWhite ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where color like '%trắng%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorBlack ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where color like '%đen%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorPurple ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where color like '%tím%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }
    public  static List<ProductDetails> getColorRed ( ){
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from productdetails where color like '%đỏ%' ")
                    .mapToBean(ProductDetails.class).stream().collect(Collectors.toList());
        });
    }

    public static void main(String[] args) {
        System.out.println("RESULT");
//        System.out.println("SUM LIST CART " + ProductDetailsService.getInstance().sumListCart());
//        setMoneyOneProduct("sp31" , 5);

    }

}
