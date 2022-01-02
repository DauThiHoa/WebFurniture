package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class ProductDetailsService {
    private static ProductDetailsService instance ;
    Map < String , ProductDetails > productDetailsMap = new HashMap<>();
    {
        productDetailsMap.put("sp1" , new ProductDetails("sp1" , "Tủ bếp đơn giản" , "Tiện nghi" , "LUXURY", "Nhật Bản" , 700000 , 5 , "Image/img_1.png" , 1000000 , "26/1/2022" , "Còn hàng" , "PG1" , "idCategory1" , "1.000.000"));
        productDetailsMap.put("sp2" , new ProductDetails("sp2" , "Tủ HaBu" , "Tiện nghi" , "HABU", "Nhật Bản" , 400000 , 5 , "Image/TuHabu.PNG" , 500000 , "22/1/2022" , "Còn hàng" , "PG2" , "idCategory2" , "1.000"));
        productDetailsMap.put("sp3" , new ProductDetails("sp3" , "Sofa Bảng Bella" , "Nhỏ gọn" , "Bella", "Hàn Quốc" , 700000 , 10 , "Image/SofaBangBella.PNG" , 3000000 , "22/2/2022" , "Còn hàng" , "PG3" , "idCategory3" , "2.000"));
        productDetailsMap.put("sp4" , new ProductDetails("sp4" , "Kệ Tủ HoBu" , "Nhỏ gọn" , "HOBU", "Nhật Bản" , 700000 , 5 , "Image/keTuHobu.PNG" , 5000000 , "23/1/2022" , "Còn hàng" , "PG4" , "idCategory4" , "2.500"));
        productDetailsMap.put("sp5" , new ProductDetails("sp5" , "Kệ Treo Poplar" , "Hài hòa , màu sắc đa dạng" , "Poplar", "Hàn Quốc" , 500000 , 10 , "Image/KeTreoPoplar.PNG" , 500000 , "24/1/2022" , "Còn hàng" , "PG5" , "idCategory5" , "3.000"));
        productDetailsMap.put("sp6" , new ProductDetails("sp6" , "Kệ Ti Vi HoBu" , "Tiện nghi" , "HOBU", "Nhật Bản" , 700000 , 5 , "Image/KeTiViHoBu.PNG" , 900000 , "25/1/2022" , "Còn hàng" , "PG6" , "idCategory6" , "5.000"));
        productDetailsMap.put("sp7" , new ProductDetails("sp7" , "Ghế Euro" , "Nhỏ nhẹ " , "Euro", "Nhật Bản" , 700000 , 10 , "Image/gheEuro.PNG" , 200000 , "26/1/2022" , "Còn hàng" , "PG7" , "idCategory7" , "5.500"));
        productDetailsMap.put("sp8" , new ProductDetails("sp8" , "Gối tựa lưng" , "Mềm mại" , "LUXURY", "Nhật Bản" , 600000 , 12, "../ImageProduct/Goi-tua-lung-van-phong.webp" , 110000 , "27/1/2022" , "Còn hàng" , "PG8" , "idCategory8" , "6.000"));
        productDetailsMap.put("sp9" , new ProductDetails("sp9" , "Sofa phòng khách" , "Tiện nghi" , "LUXURY", "Nhật Bản" , 650000 , 20 , "../ImageProduct/Sofapk.jpg" , 2280000 , "28/2/2022" , "Còn hàng" , "PG9" , "idCategory9" , "7.000"));
        productDetailsMap.put("sp10" , new ProductDetails("sp10" , "Bàn trà" , "Tiện nghi" , "LUXURY", "Nhật Bản" , 700000 , 5 , "../ImageProduct/ban-tra-chong-tham-nuoc.jpg" , 1529000 , "2/3/2022" , "Còn hàng" , "PG10" , "idCategory10" , "7.500"));
        productDetailsMap.put("sp11" , new ProductDetails("sp11" , "Gối Sofa hiện đại" , "Tiện nghi" , "LUXURY", "Nhật Bản" , 600000 , 12, "../ImageProduct/Goi-tua-lung-sofa-phong-cach-hien-dai.webp" , 160000 , "27/1/2022" , "Còn hàng" , "PG11" , "idCategory11" , "6.000"));
        productDetailsMap.put("sp12" , new ProductDetails("sp12" , "Đệm ngồi" , "Tiện nghi" , "LUXURY", "Nhật Bản" , 550000 , 20 , "../ImageProduct/Dem-ngoi-hinh-vuong-phong-cach.webp" , 120000 , "28/2/2022" , "Còn hàng" , "PG12" , "idCategory12" , "7.000"));
        productDetailsMap.put("sp13" , new ProductDetails("sp13" , "Bàn trà phòng khách" , "Tiện nghi" , "LUXURY", "Nhật Bản" , 700000 , 5 , "../ImageProduct/ban-tra-phong-khach.webp" , 1000000 , "2/3/2022" , "Còn hàng" , "PG13" , "idCategory13" , "7.500"));

    }
    public static ProductDetailsService getInstance() {
        if (instance == null ){
            instance = new ProductDetailsService();
        }
        return instance;
    }
    public ProductDetailsService (){

    }
    public List <ProductDetails> getAll (){
        return new LinkedList<>(productDetailsMap.values());
    }
}
