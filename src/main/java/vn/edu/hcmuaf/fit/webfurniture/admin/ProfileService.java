package vn.edu.hcmuaf.fit.webfurniture.admin;

import vn.edu.hcmuaf.fit.webfurniture.beans.Customer;
import vn.edu.hcmuaf.fit.webfurniture.beans.Order;
import vn.edu.hcmuaf.fit.webfurniture.beans.Profile;
import vn.edu.hcmuaf.fit.webfurniture.db.JDBIConnector;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

public class ProfileService implements Serializable {
    private static ProfileService instance ;

    public static ProfileService getInstance() {
        if (instance == null ){
            instance = new ProfileService();
        }
        return instance;
    }
    public ProfileService(){

    }


    public Profile getProfile ( ) {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(" select * from profile where idProfile = ( select max(idProfile + 0) from profile )")
                    .mapToBean(Profile.class).first();
        });
    }

    public boolean addProfile(String username, String email, String firstname, String lastname, String address, String city,
                              String country, String postalcode, String aboutme, String age, String friends, String photos,
                              String comments, String description) {
        System.out.println(username);
        System.out.println(email);
        System.out.println(firstname);
        System.out.println(lastname);
        int total = JDBIConnector.get().withHandle(h -> {
            int sum = 0 ;
            sum = h.createUpdate("INSERT INTO profile ( username , email , firstname , lastname ,address , city," +
                            "country , postalcode ,aboutme, age , friends , photos , comments , description) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)")
                    .bind(0 , username )
                    .bind(1 , email)
                    .bind(2 , firstname)
                    .bind(3 , lastname)
                    .bind(4 , address)
                    .bind(5 , city)
                    .bind(6 , country)
                    .bind(7 , postalcode)
                    .bind(8 , aboutme)
                    .bind(9 , age)
                    .bind(10 , friends)
                    .bind(11 , photos)
                    .bind(12 , comments)
                    .bind(13 , description)
                    .execute();
            // Số dòng được chèn vào
            return sum ;
        });
        // size của đơn hàng
        return true;
    }

    public int UpdateProfile(String id , String username, String email, String firstname, String lastname, String address, String city,
                             String country, String postalcode, String aboutme, String age, String friends, String photos,
                             String comments, String description) {
        int idProfile = Integer.parseInt(id);
        int age_int = Integer.parseInt(age);
        int friends_int = Integer.parseInt(friends);
        int photos_int = Integer.parseInt(photos);
        int comments_int = Integer.parseInt(comments);

        return JDBIConnector.get().withHandle(h ->
                h.createUpdate("update `profile` set username = ? , email = ? , firstname = ? , lastname = ?, " +
                                "address = ? , city = ? , country = ? , postalcode = ? , aboutme = ? , age = ? , " +
                                "friends = ? , photos = ? , comments = ? , description = ?  where idProfile = ? ")

                        .bind(0 , username )
                        .bind(1 , email )
                        .bind(2 , firstname )
                        .bind(3 , lastname )
                        .bind(4 , address )
                        .bind(5 , city )
                        .bind(6 , country )
                        .bind(7 , postalcode )
                        .bind(8 , aboutme )
                        .bind(9 , age_int )
                        .bind(10 , friends_int )
                        .bind(11 , photos_int )
                        .bind(12 , comments_int )
                        .bind(13, description )
                        .bind(14 , idProfile )
                        .execute());
    }

//    public static void main(String[] args) {
//        List<Order> re = getInstance().getAll();
//        for ( int i = 0 ; i < re.size() ; i ++) {
//            System.out.println(re.get(i).toString());
//        }
////        Customer customer = getInstance().getCustomer();
////        System.out.println(customer.toString());
//    }
}
