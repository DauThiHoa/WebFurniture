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

    public boolean addDirectoryManagement(String category, String linkImage, String modules, String display) {

        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum = h.createUpdate("INSERT INTO pageweb ( nameCategory , linkImage , modules , display ) VALUES (?,?,?,?)")
                    .bind(0 , category )
                    .bind(1 , linkImage)
                    .bind(2 , modules)
                    .bind(3 , display) .execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }
}
