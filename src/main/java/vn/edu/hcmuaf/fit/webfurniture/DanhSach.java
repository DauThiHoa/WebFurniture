package vn.edu.hcmuaf.fit.webfurniture;

import java.util.ArrayList;

public class DanhSach {
    private String fullName;
    private String email;
    private String password;
    private String day;
    private String month;
    private String year;
    private String creditCard;
    private String cardCVV;
    private static ArrayList<DanhSach> list = new ArrayList<>();

    public DanhSach(String fullName, String email, String password, String day, String month, String year, String creditCard, String cardCVV) {
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.day = day;
        this.month = month;
        this.year = year;
        this.creditCard = creditCard;
        this.cardCVV = cardCVV;
    }

    public static void addDanhSach(String fullName, String email, String password, String day, String month, String year, String creditCard, String cardCVV) {
        DanhSach ds = new DanhSach(fullName, email, password, day, month, year, creditCard, cardCVV);
        list.add(ds);
    }

    public static ArrayList<DanhSach> getList() {
        return list;
    }
}
