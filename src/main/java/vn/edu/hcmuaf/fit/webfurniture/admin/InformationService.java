package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Information;
import vn.edu.hcmuaf.fit.webfurniture.beans.PageWeb;
import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Collectors;

public class InformationService implements Serializable {
    private static InformationService instance ;

    public static InformationService getInstance() {
        if (instance == null ){
            instance = new InformationService();
        }
        return instance;
    }
    public InformationService(){

    }
    public Information getAll () {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select * from information where idInformation = ( select max( idInformation ) from information ) ")
                    .mapToBean(Information.class).first();
        });
    }

    public int update(String id, String company, String address, String hotline, String email, String copyright,
                      String facebook, String twitter, String youtube, String instagram) {

        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("update information set companyName = ? , address = ? , hotline = ? , email = ?, copyright = ?, facebook = ? , twitter = ? ,youtube = ? , instagram = ? where idInformation = ? ")
                        .bind(0 , company )
                        .bind(1 , address )
                        .bind(2 , hotline )
                        .bind(3 , email )
                        .bind(4 , copyright )
                        .bind(5 , facebook )
                        .bind(6 , twitter )
                        .bind(7 , youtube )
                        .bind(8 , instagram )
                        .bind(9 , Integer.parseInt(id) )
                        .execute());
    }
}
