package vn.edu.hcmuaf.fit.webfurniture.service;

import vn.edu.hcmuaf.fit.webfurniture.beans.Product;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class ProductService {

    private static ProductService instance;
    Map<String, Product> productMap = new HashMap<>();

    {
        productMap.put("sp1", new Product("sp1", "Bàn làm việc", "Sản phẩm Bàn làm việc", 100000, 500000, 1, "http://localhost:8080/Lab6/BanLamViec.png"));
        productMap.put("sp2", new Product("sp2", "Tủ HaBu", "Sản phẩm Tủ HaBu", 700000, 500000, 1, "http://localhost:8080/Lab6/TuHabu.png"));
        productMap.put("sp3", new Product("sp3", "Sofa Bảng Bella", "Sản phẩm Sofa Bảng Bella", 800000, 500000, 1, "http://localhost:8080/Lab6/SofaBangBella.png"));
        productMap.put("sp4", new Product("sp4", "Kệ Tủ HoBu", "Sản phẩm Kệ Tủ HoBu", 850000, 500000, 1, "http://localhost:8080/Lab6/keTuHobu.png"));
        productMap.put("sp5", new Product("sp5", "Kệ Treo Poplar", "Sản phẩm Kệ Treo Poplar", 9000000, 500000, 1, "http://localhost:8080/Lab6/KeTreoPoplar.png"));
        productMap.put("sp6", new Product("sp6", "Kệ TiVi HoBu", "Sản phẩm Kệ TiVi HoBu", 100000, 50000, 1, "http://localhost:8080/Lab6/KeTiViHoBu.png"));
        productMap.put("sp7", new Product("sp7", "Ghế Euro", "Sản phẩm Ghế Euro", 789000, 600000, 1, "http://localhost:8080/Lab6/gheEuro.png"));
        productMap.put("sp8", new Product("sp8", "Ghế Gỗ Bập Bênh Iconic", "Sản phẩm Ghế Gỗ Bập Bênh Iconic", 850000, 500000, 1, "http://localhost:8080/Lab6/GheGoBapBenhIconic.png"));
        productMap.put("sp9", new Product("sp9", "Ghế Phòng Khách Arctander", "Sản phẩm Ghế Phòng Khách Arctander", 575000, 40000, 1, "http://localhost:8080/Lab6/GhePhongKhachArctander.png"));
        productMap.put("sp10", new Product("sp10", "Bàn Aillen 03", "Sản phẩm Bàn Aillen 03", 900000, 80000, 1, "http://localhost:8080/Lab6/BanAillen03_SPH.png"));
        productMap.put("sp11", new Product("sp11", "Bàn Binas", "Sản phẩm Bàn Binas", 850000, 50000, 1, "http://localhost:8080/Lab6/BanBinas_SPH.png"));
        productMap.put("sp12", new Product("sp12", "Tủ đầu giường hiện đại Kozoka trysil", "Sản phẩm Tủ đầu giường hiện đại Kozoka trysil", 100000, 1, 1, "http://localhost:8080/Lab6/KOZOKA_TRYSIL_SPM.png"));
        productMap.put("sp13", new Product("sp13", "Đồng hồ Miso", "Sản phẩm Đồng hồ Miso", 588898, 50000, 1, "http://localhost:8080/Lab6/dongHoMiso_SPM.png"));
        productMap.put("sp14", new Product("sp14", "Đồng hồ TaBu", "Sản phẩm Đồng hồ TaBu", 750000, 50000, 1, "http://localhost:8080/Lab6/dongHoTaBu_SPM.png"));
        productMap.put("sp15", new Product("sp15", "Tủ đầu giường ILbro", "Sản phẩm Tủ đầu giường ILbro", 600000, 50000, 1, "http://localhost:8080/Lab6/ILBROBASIC_SPM.png"));
        productMap.put("sp16", new Product("sp16", "Tủ chén thấp 3 ngăn ", "Sản phẩm Tủ chén thấp 3 ngăn ", 56000, 50000, 1, "http://localhost:8080/Lab6/DRVIC3SO_SPM.png"));
        productMap.put("sp17", new Product("sp17", "Tủ quần áo IBIE", "Sản phẩm Tủ quần áo IBIE", 60000, 50000, 1, "http://localhost:8080/Lab6/SDR2O_SPM.png"));
        productMap.put("sp18", new Product("sp18", "Bộ 4 đồ lót ly", "Sản phẩm Bộ 4 đồ lót ly", 678000, 500000, 1, "http://localhost:8080/Lab6/NVH03_SPM.png"));
        productMap.put("sp19", new Product("sp19", "Bàn Làm việc ND01", "Sản phẩm Bàn Làm việc ND01", 500000, 400000, 1, "http://localhost:8080/Lab6/banLamViecND01_layout5.png"));
        productMap.put("sp20", new Product("sp20", "Bàn ăn bằng gỗ", "Sản phẩm Bàn ăn bằng gỗ", 450000, 350000, 1, "http://localhost:8080/Lab6/banAnBangGo_layout6.png"));

    }

    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }

    public ProductService() {

    }

    public List<Product> getAll() {
        return new LinkedList<>(productMap.values());
    }

}
