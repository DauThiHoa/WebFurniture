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
            return handle.createQuery("select * from information where idInformation = ( select max( idInformation + 0) from information ) ")
                    .mapToBean(Information.class).first();
        });
    }

    public int update(String id, String company, String address,String shareicon , String browsericon, String hotline, String email, String copyright,
                      String facebook, String twitter, String youtube, String instagram) {

        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("update information set companyName = ? , address = ? , shareicon = ? , browsericon = ? , hotline = ? , email = ?, copyright = ?, facebook = ? , twitter = ? ,youtube = ? , instagram = ? where idInformation = ? ")
                        .bind(0 , company )
                        .bind(1 , address )
                        .bind(2 , shareicon )
                        .bind(3 , browsericon )
                        .bind(4 , hotline )
                        .bind(5 , email )
                        .bind(6 , copyright )
                        .bind(7 , facebook )
                        .bind(8 , twitter )
                        .bind(9 , youtube )
                        .bind(10 , instagram )
                        .bind(11 , Integer.parseInt(id) )
                        .execute());
    }
}
