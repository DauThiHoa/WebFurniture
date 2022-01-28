package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.PageWeb;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.dao.ProductDetailsDao;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.util.List;
import java.util.stream.Collectors;

public class DirectoryManagementService {
    private static DirectoryManagementService instance ;

    public static DirectoryManagementService getInstance() {
        if (instance == null ){
            instance = new DirectoryManagementService();
        }
        return instance;
    }
    public DirectoryManagementService(){

    }
    public List <PageWeb> getAll () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from pageweb")
                    .mapToBean(PageWeb.class).stream().collect(Collectors.toList());
        });
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

    public int delete(String id) {
        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("delete from pageweb where id = ? ")
                        .bind(0 , id ).execute());
    }

    public int update(String id, String nameCategory, String modules, String display) {

        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("update pageweb set nameCategory = ? , modules = ? , display = ? where id = ? ")
                        .bind(0 , nameCategory )
                        .bind(1 , modules )
                        .bind(2 , display )
                        .bind(3 , Integer.parseInt(id) )
                        .execute());
    }
}
