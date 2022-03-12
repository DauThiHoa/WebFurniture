/*
 Navicat Premium Data Transfer

 Source Server         : WebFurniture
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : webfurniture

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 19/02/2022 20:49:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `idContact` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idContact`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `idCustomer` int NOT NULL AUTO_INCREMENT,
  `idOrder` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `birthDay` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf16 COLLATE utf16_vietnamese_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `cardNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deliveryMethod` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `discount` int NULL DEFAULT NULL,
  `ship` int NOT NULL,
  `totalMoney` int NOT NULL,
  PRIMARY KEY (`idCustomer`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for detailedproductreview
-- ----------------------------
DROP TABLE IF EXISTS `detailedproductreview`;
CREATE TABLE `detailedproductreview`  (
  `idDetailedProductReview` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `evaluate` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `nameCustomer` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `emailCustomer` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `dateSubmitted` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `linkImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `idProductDetails` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idDetailedProductReview`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detailedproductreview
-- ----------------------------
INSERT INTO `detailedproductreview` VALUES (1, 'Màu sắc', 'Tốt', 'null', 'null', '2022-02-16 19:51:28', ' Phong phú, đa dạng', 'Image/dongHoMiso_SPM.PNG', 'sp27');

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `idInformation` int NOT NULL AUTO_INCREMENT,
  `companyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `shareIcon` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `browserIcon` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `hotline` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `copyright` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idInformation`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (1, 'Web Furniture', 'Ward 26, Binh Thanh District, Ho Chi Minh City', 'img_1.png', 'img.png', '0123456789', 'JhonDoue@gmail.com', 'Copyright 2021 - Web Furniture', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.youtube.com', 'Web Furniture');

-- ----------------------------
-- Table structure for newcomment
-- ----------------------------
DROP TABLE IF EXISTS `newcomment`;
CREATE TABLE `newcomment`  (
  `idNewComment` int NOT NULL AUTO_INCREMENT,
  `nameCustomer` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `emailCustomer` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `dateSubmitted` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `idNew` int NULL DEFAULT NULL,
  PRIMARY KEY (`idNewComment`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newcomment
-- ----------------------------
INSERT INTO `newcomment` VALUES (1, 'Tuyết Nhi', '19130075@st.hcmuaf.edu.vn', '2022-02-04 19:22:14', 'Nội dung hay', 1);

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails`  (
  `idOrderDetails` int NOT NULL AUTO_INCREMENT,
  `idOrder` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `idProductDetails` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `quantitySold` int NOT NULL,
  `price` double(50, 0) NOT NULL,
  `discount` double(50, 0) NULL DEFAULT NULL,
  `totalMoney` double(50, 0) NOT NULL,
  PRIMARY KEY (`idOrderDetails`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------
INSERT INTO `orderdetails` VALUES (1, '1', 'sp2', 1, 500000, 25000, 500000);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `idOrder` int NOT NULL AUTO_INCREMENT,
  `idCustomer` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `totalMoney` double NULL DEFAULT NULL,
  `dateOrder` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `dateReceipt` datetime(0) NOT NULL DEFAULT current_timestamp(0),
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idOrder`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for pageweb
-- ----------------------------
DROP TABLE IF EXISTS `pageweb`;
CREATE TABLE `pageweb`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nameCategory` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `linkImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `modules` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `display` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pageweb
-- ----------------------------
INSERT INTO `pageweb` VALUES (1, 'Home page', 'QuanTri/Admin/assets/img/Admin/img.png', 'Posts', 'block');
INSERT INTO `pageweb` VALUES (2, 'Sign up', 'QuanTri/Admin/assets/img/Admin/img_1.png', 'Sign up', 'block');
INSERT INTO `pageweb` VALUES (3, 'Log in', 'QuanTri/Admin/assets/img/Admin/img_2.png', 'Log in', 'block');
INSERT INTO `pageweb` VALUES (4, 'Shop system', 'QuanTri/Admin/assets/img/Admin/img_3.png', 'Posts', 'block');
INSERT INTO `pageweb` VALUES (5, 'Contact', 'QuanTri/Admin/assets/img/Admin/img_4.png', 'Posts', 'block');
INSERT INTO `pageweb` VALUES (6, 'Cart', 'QuanTri/Admin/assets/img/Admin/img_5.png', 'Cart', 'block');
INSERT INTO `pageweb` VALUES (7, 'Product details', 'QuanTri/Admin/assets/img/Admin/img_6.png', 'Product', 'block');
INSERT INTO `pageweb` VALUES (8, 'The living room\'s furniture', 'QuanTri/Admin/assets/img/Admin/img_7.png', 'Product', 'block');
INSERT INTO `pageweb` VALUES (9, 'Kitchen furniture', 'QuanTri/Admin/assets/img/Admin/img_8.png', 'Product', 'block');
INSERT INTO `pageweb` VALUES (10, 'Bedroom furniture', 'QuanTri/Admin/assets/img/Admin/img_10.png', 'Product', 'block');
INSERT INTO `pageweb` VALUES (11, 'Office furniture', 'QuanTri/Admin/assets/img/Admin/img_9.png', 'Product', 'block');
INSERT INTO `pageweb` VALUES (12, 'Decorations', 'QuanTri/Admin/assets/img/Admin/img_11.png', 'Product', 'block');
INSERT INTO `pageweb` VALUES (13, 'Tips', 'QuanTri/Admin/assets/img/Admin/img_12.png', 'Posts', 'block');
INSERT INTO `pageweb` VALUES (14, 'News', 'QuanTri/Admin/assets/img/Admin/img_13.png', 'Posts', 'block');
INSERT INTO `pageweb` VALUES (15, 'Posts', 'QuanTri/Admin/assets/img/Admin/img_14.png', 'Posts', 'block');

-- ----------------------------
-- Table structure for productdetails
-- ----------------------------
DROP TABLE IF EXISTS `productdetails`;
CREATE TABLE `productdetails`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `trademark` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `production` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `priceOld` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `linkImage` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `priceNew` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `dateSubmitted` datetime(0) NULL DEFAULT current_timestamp(0),
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `idProductGroups` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `idCategory` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  `viewProductDetails` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productdetails
-- ----------------------------
INSERT INTO `productdetails` VALUES ('s1', 'Bàn ăn', 'Bàn ăn gỗ dành cho gia đình', 'HÒA PHÁT', 'Việt Nam', '1890000', 'NoiThatPhongBep/Image_phongbep/ban-an.jpg', '50', '1890000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '150');
INSERT INTO `productdetails` VALUES ('s10', 'Ghế nhà bếp', 'Ghế nhỏ gọn ', 'HÒA PHÁT', 'Việt Nam', '350000', 'NoiThatPhongBep/Image_phongbep/ghe-nha-bep.jpg', '65', '350000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '258');
INSERT INTO `productdetails` VALUES ('s11', 'Ghế nhà bếp', 'Thiết kế đơn giản màu trắng tinh khiết', 'HÒA PHÁT', 'Việt Nam', '290000', 'NoiThatPhongBep/Image_phongbep/ghe_bep.jpg', '23', '290000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '2036');
INSERT INTO `productdetails` VALUES ('s12', 'Ghế nhà bếp', 'ghế cao nhà bếp', 'HÒA PHÁT', 'Việt Nam', '230000', 'NoiThatPhongBep/Image_phongbep/ghe_nha_bep.jpg', '25', '210000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '1453');
INSERT INTO `productdetails` VALUES ('s13', 'Kệ bếp', 'Thiết kế phù hợp cho căn bếp bạn sang trọng và sáng hơn', 'HÒA PHÁT', 'Việt Nam', '1200000', 'NoiThatPhongBep/Image_phongbep/ke-bep.jpg', '12', '1160000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '201');
INSERT INTO `productdetails` VALUES ('s14', 'Khăn trải bàn', 'Khăn trải bàn họa tiết caro', 'HÒA PHÁT', 'Việt Nam', '200000', 'NoiThatPhongBep/Image_phongbep/khan-trai-ban.jpg', '14', '180000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '1236');
INSERT INTO `productdetails` VALUES ('s15', 'Khăn trải bàn cao cấp', 'khăn bàn cao cấp vạch kẻ sọc', 'HÒA PHÁT', 'Việt Nam', '270000', 'NoiThatPhongBep/Image_phongbep/Khan-trai-ban-an-vai-cao-cap.jpg', '189', '270000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '1000');
INSERT INTO `productdetails` VALUES ('s16', 'Bàn ăn gia đình', 'thiết kế sang trọng kết hợp với màu xanh phù hợp trang trí nhà bếp', 'HÒA PHÁT', 'Việt Nam', '2400000', 'NoiThatPhongBep/Image_phongbep/lam-moi-ban-an-gia-dinh.png', '21', '2370000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '148');
INSERT INTO `productdetails` VALUES ('s17', 'Ghế nhà bếp', 'Ghế nhà bếp có tựa lưng', 'HÒA PHÁT', 'Việt Nam', '320000', 'NoiThatPhongBep/Image_phongbep/phong-thuy-phong-bep.jpg', '12', '300000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '124');
INSERT INTO `productdetails` VALUES ('s18', 'Tủ bếp', 'Tủ bếp làm từ gỗ công nghiệp, bố trí hài hòa', 'HÒA PHÁT', 'Việt Nam', '2600000', 'NoiThatPhongBep/Image_phongbep/tu-bep.jpg', '56', '2600000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '1256');
INSERT INTO `productdetails` VALUES ('s19', 'Tủ bếp', 'Tủ bếp gỗ xoan phun sơn PU', 'HÒA PHÁT', 'Việt Nam', '1980000', 'NoiThatPhongBep/Image_phongbep/tu-bep1.jpg', '25', '1980000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '125');
INSERT INTO `productdetails` VALUES ('s2', 'Bàn ăn bọc da', 'Bộ bàn gỗ bọc da cao cấp', 'HÒA PHÁT', 'Việt Nam', '1800000', 'NoiThatPhongBep/Image_phongbep/ban-an-boc-da.jpg', '100', '1720000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '632');
INSERT INTO `productdetails` VALUES ('s20', 'Tủ bếp crylic', 'Tủ bếp crylic sang trọng', 'HÒA PHÁT', 'Việt Nam', '3100000', 'NoiThatPhongBep/Image_phongbep/tu-bep-acrylic.jpg', '23', '3100000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '1456');
INSERT INTO `productdetails` VALUES ('s21', 'Tủ bếp acrylic sang trọng', 'Thiết kế bắt mắt', 'HÒA PHÁT', 'Việt Nam', '2000000', 'NoiThatPhongBep/Image_phongbep/tu-bep-acrylic-mau-trang-sua-sang-trong.jpg', '2', '1995000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '452');
INSERT INTO `productdetails` VALUES ('s22', 'Tủ bếp đơn giản', 'Tủ bếp đơn giản ', 'HÒA PHÁT', 'Việt Nam', '1200000', 'NoiThatPhongBep/Image_phongbep/tu-bep-don-gian.jpg', '1', '1100000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '12');
INSERT INTO `productdetails` VALUES ('s23', 'Tủ bếp hiện đại', 'Thiết kế mới, hiện đại nhiều ngăn ', 'HÒA PHÁT', 'Việt Nam', '2200000', 'NoiThatPhongBep/Image_phongbep/tu-bep-hien-dai.jpg', '12', '2200000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '123');
INSERT INTO `productdetails` VALUES ('s24', 'Tủ bếp', 'Tủ bếp ', 'HÒA PHÁT', 'Việt Nam', '1150000', 'NoiThatPhongBep/Image_phongbep/tu-phong-bep.jpg', '10', '1120000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '50');
INSERT INTO `productdetails` VALUES ('s25', 'Bộ bàn khách hiện đại', 'Bộ bàn ghế phòng khách làm bằng gỗ óc chó', 'HÒA PHÁT', 'Việt Nam', '3400000', 'ImageProduct/bo-ban-khach.webp', '20', '3400000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '125');
INSERT INTO `productdetails` VALUES ('s26', 'Ghế sofa phòng khách gia đình', 'Sofa họa tiết ', 'LUXURY', 'Nhật Bản', '3200000', 'ImageProduct/ghe-sofa-phong-khach-gia-dinh.webp', '5', '3150000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '1526');
INSERT INTO `productdetails` VALUES ('s27', 'Đồng hồ treo tường phòng khách', 'Đồng hồ kim loại mặt gỗ', 'EURO', 'Nhật Bản', '300000', 'ImageProduct/Dong-ho-treo-tuong-thiet-ke.webp', '20', '300000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '521');
INSERT INTO `productdetails` VALUES ('s28', 'Ghế đôn bọc da cao cấp', 'Da bọc ghế cao cấp ', 'LUXURY', 'Nhật Bản', '300000', 'ImageProduct/Ghe-don-boc-da-cao-cap-cho-phong-khach.webp', '19', '280000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '1201');
INSERT INTO `productdetails` VALUES ('s29', 'Ghế sofa bọc nỉ chân cao', 'Ghế bọc nỉ chân gỗ xoan', 'HOÀ PHÁT', 'Việt Nam', '320000', 'ImageProduct/Ghe-sofa-boc-ni-dang-chan-cao.webp', '25', '320000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '101');
INSERT INTO `productdetails` VALUES ('s3', 'Bộ bàn ăn bằng gỗ', 'Thiết kế hài hòa với không gian bếp, gỗ chất lượng', 'HÒA PHÁT', 'Việt Nam', '3400000', 'NoiThatPhongBep/Image_phongbep/ban-an-go.jpg', '20', '3400000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '1258');
INSERT INTO `productdetails` VALUES ('s30', 'Bàn trà phòng khách', 'Bàn thấp mặt kính chống nước', 'HOÀ PHÁT', 'Việt Nam', '1300000', 'ImageProduct/ban-tra-phong-khach.webp', '18', '1280000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '1023');
INSERT INTO `productdetails` VALUES ('s31', 'Khăn trải bàn gia đình hình tròn', 'Bàn thấp Khăn trắng họa tiết nổi bật', 'SOLY', 'Việt Nam', '370000', 'ImageProduct/Khan-trai-ban-an-gia-dinh-hinh-tron.webp', '25', '350000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '125');
INSERT INTO `productdetails` VALUES ('s32', 'Bàn trà', 'Bàn trà phòng khách', 'HÒA PHÁT', 'Việt Nam', '1529000', 'ImageProduct/ban-tra-chong-tham-nuoc.jpg', '8', '1529000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '1023');
INSERT INTO `productdetails` VALUES ('s33', 'Sofa phòng khách họa tiết', 'Sofa họa tiết hạt ', 'LUXURY', 'Nhật Bản', '2300000', 'ImageProduct/Sofapk.jpg', '10', '2280000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '103');
INSERT INTO `productdetails` VALUES ('s34', 'Gối tựa lưng văn phòng', 'Gối tựu lưng hình mèo ', 'SOLY', 'Việt Nam', '120000', 'ImageProduct/Goi-tua-lung-van-phong.webp', '7', '110000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '1056');
INSERT INTO `productdetails` VALUES ('s35', 'Gối tựa lưng Sofa hiện đại', 'Gối trang trí phòng khách hiện đại', 'SOLY', 'Việt Nam', '160000', 'ImageProduct/Goi-tua-lung-sofa-phong-cach-hien-dai.webp', '15', '160000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '102');
INSERT INTO `productdetails` VALUES ('s36', 'Gối tựa lưng họa tiết Bohemian', 'Gối trang trí phòng khách hiện đại', 'SOLY', 'Việt Nam', '80000', 'ImageProduct/Goi-tua-lung-hoa-tiet-Bohemian.webp', '15', '80000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '192');
INSERT INTO `productdetails` VALUES ('s37', 'Gối Sofa', 'trang trí phòng khách sang trọng', 'SOLY', 'Việt Nam', '100000', 'ImageProduct/Goi_sofa.webp', '20', '100000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '156');
INSERT INTO `productdetails` VALUES ('s38', 'Đệm ngồi gia đình họa tiết kiwi', 'Gối họa tiết kiwi', 'SOLY', 'Việt Nam', '100000', 'ImageProduct/Dem-ngoi-gia-dinh-hoa-tiet-dep.webp', '25', '95000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '105');
INSERT INTO `productdetails` VALUES ('s39', 'Gối tựa lưng', 'Gối tựa lưng phòng khách', 'SOLY', 'Việt Nam', '100000', 'ImageProduct/goi_tua_lung.webp', '28', '100000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '1023');
INSERT INTO `productdetails` VALUES ('s4', 'Bàn ăn đơn giản', 'Bàn xếp gọn, dễ di chuyển', 'HÒA PHÁT', 'Việt Nam', '800000', 'NoiThatPhongBep/Image_phongbep/ban-ghe-an.jpg', '10', '750000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '123');
INSERT INTO `productdetails` VALUES ('s40', 'Đệm ngồi ghế văn phòng', 'Đệm ngồi văn phòng siêu êm', 'SOLY', 'Việt Nam', '120000', 'ImageProduct/Dem-ngoi-ghe-van-phong.webp', '16', '110000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '1204');
INSERT INTO `productdetails` VALUES ('s41', 'Đệm ngồi hình vuông phong cách', 'Đệm lót ghế ngồi hình vuông ', 'SOLY', 'Việt Nam', '120000', 'ImageProduct/Dem-ngoi-hinh-vuong-phong-cach.webp', '50', '120000', '0000-00-00 00:00:00', 'Còn hàng', 'S2', 'A2', '1021');
INSERT INTO `productdetails` VALUES ('s42', 'Bàn Eames tròn', 'Thiết kế nhỏ gọn, đơn giản', 'HÒA PHÁT', 'Việt Nam', '650000', 'ImageProduct/Ban_Eames_tron.webp', '15', '590000', '0000-00-00 00:00:00', 'Còn hàng', 'PG59', 'C59', '102');
INSERT INTO `productdetails` VALUES ('s5', 'Bàn ghế gỗ', 'Bộ bàn ghế gia đình, gỗ xoan', 'HÒA PHÁT', 'Việt Nam', '1500000', 'NoiThatPhongBep/Image_phongbep/ban-ghe-an-go.jpg', '30', '1500000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '2000');
INSERT INTO `productdetails` VALUES ('s6', 'Bộ bàn ghế cao cấp', 'Bộ bàn inox bền ', 'HÒA PHÁT', 'Việt Nam', '1300000', 'NoiThatPhongBep/Image_phongbep/ban-ghe-an-xuan-hoa.jpg', '54', '1280000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '215');
INSERT INTO `productdetails` VALUES ('s7', 'Bộ bàn inox mặt kính', 'Bàn inox mặt kính dày chất lượng', 'HÒA PHÁT', 'Việt Nam', '1650000', 'NoiThatPhongBep/Image_phongbep/ban-ghe-inox-mat-kinh.jpg', '24', '1620000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '245');
INSERT INTO `productdetails` VALUES ('s8', 'Khăn trải bàn ăn', 'Khăn trải bàn trắng xanh ', 'HÒA PHÁT', 'Việt Nam', '300000', 'NoiThatPhongBep/Image_phongbep/cac-mau-khan-trai-ban-dep.jpg', '21', '280000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '456');
INSERT INTO `productdetails` VALUES ('s9', 'Tủ bếp acrylic', 'Tủ bếp thiết kế tinh tế, gọn gàng', 'HÒA PHÁT', 'Việt Nam', '1550000', 'NoiThatPhongBep/Image_phongbep/cua-tu-bep-acrylic.jpg', '45', '1550000', '0000-00-00 00:00:00', 'Còn hàng', 'S1', 'A1', '25');
INSERT INTO `productdetails` VALUES ('sp1', 'Tủ bếp đơn giản', 'Màu sắc : Xanh cam .\r\nKích thước : 3m - 1m - 1m ( dài - rộng - cao ).\r\nKhối lượng : 250kg .\r\nChất liệu :  Gỗ công nghiệp bền đẹp và đa đạng mẫu .\r\nÝ tưởng thết kế : Tủ bếp đẹp , hiện đại và sang trọng .\r\nCác đặc điểm nổi bật:   thiết kế có 2 cạnh tủ giao nhau tạo thành hình chữ L vuông góc. ... Đồng thời thì tủ bếp được cố định dọc theo hai bức tường cũng sẽ giúp cung cấp không gian lưu trữ lớn và các gia đình có thể tận dụng khoảng trống trong không gian để đặt bàn ăn gia đình .', 'LUXURY', 'Nhật Bản', '500000', 'Image/img_1.png', '20', '1000000', '0000-00-00 00:00:00', 'Còn hàng', 'PG1', 'C1', '5000');
INSERT INTO `productdetails` VALUES ('sp10', 'Bàn trà', 'Nhỏ gọn', 'LUXURY', 'Nhật Bản', '1000000', 'ImageProduct/ban-tra-chong-tham-nuoc.jpg', '15', '1529000', '0000-00-00 00:00:00', 'Còn hàng', 'PG10', 'C10', '100000');
INSERT INTO `productdetails` VALUES ('sp100', 'Bó hoa bằng lụa', 'Dùng vải lụa cánh hoa nhẹ nhàng', 'RUBY', 'Việt Nam', '250000', 'ImageProduct/Bo-hoa-lua.webp', '5', '230000', '0000-00-00 00:00:00', 'Còn hàng', 'PG100', 'C100', '5426');
INSERT INTO `productdetails` VALUES ('sp101', 'Bình hoa sứ trang trí', 'Bình hoa xanh ngọc', 'RUBY', 'Việt Nam', '200000', 'ImageProduct/Binh-hoa-su-trang-tri.webp', '12', '180000', '0000-00-00 00:00:00', 'Còn hàng', 'PG101', 'C101', '214');
INSERT INTO `productdetails` VALUES ('sp102', 'Lọ cắm hoa để bàn thủy tinh', 'Lọ thủy tinh ', 'RUBY', 'Việt Nam', '250000', 'ImageProduct/Lo-cam-hoa-de-ban-thuy-tinh-trong.webp', '52', '150000', '0000-00-00 00:00:00', 'Còn hàng', 'PG102', 'C102', '212');
INSERT INTO `productdetails` VALUES ('sp103', 'Tranh trang trí gắn tường', 'Tranh trang trí phòng', 'RUBY', 'Việt Nam', '100000', 'ImageProduct/tranh-trang-tri-gan-tuong.webp', '56', '100000', '0000-00-00 00:00:00', 'Còn hàng', 'PG103', 'C103', '124');
INSERT INTO `productdetails` VALUES ('sp104', 'Tranh trang trí phòng khách', 'Trang trí phòng khách đơn giản', 'RUBY', 'Việt Nam', '130000', 'ImageProduct/bo-tranh-trang-tri-phong-khach.webp', '13', '110000', '0000-00-00 00:00:00', 'Còn hàng', 'PG104', 'C104', '253');
INSERT INTO `productdetails` VALUES ('sp105', 'Khung tranh để bàn nghệ thuật', 'Khung tranh để bàn', 'RUBY', 'Việt Nam', '160000', 'ImageProduct/Khung-tranh.webp', '84', '160000', '0000-00-00 00:00:00', 'Còn hàng', 'PG105', 'C105', '596');
INSERT INTO `productdetails` VALUES ('sp106', 'Tranh tường nghệ thuật', 'Tranh tường thiết kế hình tam giác với chiếc lá', 'RUBY', 'Việt Nam', '130000', 'ImageProduct/Tranh-tuong-nghe-thuat.webp', '12', '130000', '0000-00-00 00:00:00', 'Còn hàng', 'PG106', 'C106', '75');
INSERT INTO `productdetails` VALUES ('sp11', 'Gối Sofa hiện đại', 'Mềm mại , nhỏ nhẹ ', 'LUXURY', 'Nhật Bản', '100000', 'ImageProduct/Goi-tua-lung-sofa-phong-cach-hien-dai.webp', '15', '16000', '0000-00-00 00:00:00', 'Còn hàng', 'PG11', 'C11', '4000');
INSERT INTO `productdetails` VALUES ('sp12', 'Đệm ngồi', 'Mềm mại', 'LUXURY', 'Nhật Bản', '100000', 'ImageProduct/Dem-ngoi-hinh-vuong-phong-cach.webp', '40', '120000', '0000-00-00 00:00:00', 'Còn hàng', 'PG12', 'C12', '9000');
INSERT INTO `productdetails` VALUES ('sp13', 'Bàn trà phòng khách', 'Tiện nghi', 'LUXURY', 'Nhật Bản', '1000000', 'ImageProduct/ban-tra-phong-khach.webp', '35', '1280000', '0000-00-00 00:00:00', 'Còn hàng', 'PG13', 'C13', '4000');
INSERT INTO `productdetails` VALUES ('sp14', 'Bàn làm việc chữ L', 'Tiện nghi', 'LUXURY', 'Nhật Bản', '500000', 'NoiThatVanPhong/Image_vanphong/ban-lam-viec-chu-l-chan-sat.jpg', '20', '700000', '0000-00-00 00:00:00', 'Còn hàng', 'PG14', 'C14', '1000000');
INSERT INTO `productdetails` VALUES ('sp15', 'Đồng hồ treo tường', 'Màu sắc đa dạng', 'Poplar', 'Hàn Quốc', '100000', 'NoiThatVanPhong/Image_vanphong/dongho.jpg', '43', '400000', '0000-00-00 00:00:00', 'Còn hàng', 'PG15', 'C15', '4500');
INSERT INTO `productdetails` VALUES ('sp16', 'Đèn led', 'Nhỏ gọn , tia sáng mạnh', 'HABU', 'Hàn Quốc', '100000', 'NoiThatVanPhong/Image_vanphong/den-led-de.jpg', '65', '270000', '0000-00-00 00:00:00', 'Còn hàng', 'PG16', 'C16', '9500');
INSERT INTO `productdetails` VALUES ('sp17', 'Ghế sofa văn phòng', 'Mềm mại , nhỏ nhẹ , tiện nghi', 'LUXURY', 'Nhật Bản', '3000000', 'NoiThatVanPhong/Image_vanphong/ghe-van-phong-sofa.jpg', '34', '3100000', '0000-00-00 00:00:00', 'Còn hàng', 'PG17', 'C17', '8000');
INSERT INTO `productdetails` VALUES ('sp18', 'Bàn trà đơn giản', 'Họa tiết đẹp mắt , màu sơn đa dạng , hài hòa', 'DERGO', 'Thái Lan', '500000', 'NoiThatPhongKhach/Image_NTTTPhongkhach/ban-tra.png', '24', '990000', '0000-00-00 00:00:00', 'Còn hàng', 'PG18', 'C18', '3500000');
INSERT INTO `productdetails` VALUES ('sp19', 'Bàn trà sofa', 'Họa tiết đẹp mắt , màu sơn đa dạng , hài hòa', 'DERGO', 'Thái Lan', '1000000', 'NoiThatPhongKhach/Image_NTTTPhongkhach/ban-sofa.webp', '54', '1500000', '0000-00-00 00:00:00', 'Còn hàng', 'PG19', 'C19', '9000');
INSERT INTO `productdetails` VALUES ('sp2', 'Tủ HaBu', 'Nhỏ nhẹ', 'HABU', 'Hàn Quốc', '350000', 'Image/TuHabu.PNG', '10', '500000', '0000-00-00 00:00:00', 'Còn hàng', 'PG2', 'C2', '7500');
INSERT INTO `productdetails` VALUES ('sp20', 'Khung tranh để bàn', 'Khung tranh treo bền đẹp , chất lượng đảm bảo', 'KTTD', 'Việt Nam', '100000', 'ImageProduct/Khung-tranh-de-ban.webp', '34', '150000', '0000-00-00 00:00:00', 'Còn hàng', 'PG20', 'C20', '5000');
INSERT INTO `productdetails` VALUES ('sp21', 'Bàn làm việc văn phòng', 'Tiện nghi , nhỏ nhẹ , màu sắc phong phú đa dạng', 'LUXURY', 'Nhật Bản', '2000000', 'NoiThatVanPhong/Image_vanphong/ban-van-phong.jpg', '10', '2080000', '0000-00-00 00:00:00', 'Còn hàng', 'PG21', 'C21', '43000');
INSERT INTO `productdetails` VALUES ('sp22', 'Ghế sofa bọc nỉ chân cao', 'Mềm mại , chân cao , nhỏ gọn ', 'LUXURY', 'Nhật Bản', '500000', 'Image/img_2.png', '12', '700000', '0000-00-00 00:00:00', 'Còn hàng', 'PG22', 'C22', '45000');
INSERT INTO `productdetails` VALUES ('sp23', ' Ghế đôn bọc da cao cấp', 'Bọc da cao cấp , đa dạng phong phú ', 'Porplar', 'Thái Lan', '500000', 'Image/img_3.png', '13', '1000000', '0000-00-00 00:00:00', 'Còn hàng', 'PG23', 'C23', '34000');
INSERT INTO `productdetails` VALUES ('sp24', 'Bàn Aillen 03', 'Họa tiết đẹp mắt , màu sơn đa dạng , hài hòa', 'DERGO', 'Thái Lan', '1000000', 'Image/BanAillen03_SPH.PNG', '32', '1400000', '0000-00-00 00:00:00', 'Còn hàng', 'PG24', 'C24', '43567');
INSERT INTO `productdetails` VALUES ('sp25', 'Bàn Binas', 'Màu sắc đa dạng', 'DERGO', 'Thái Lan', '800000', 'Image/BanBinas_SPH.PNG', '15', '900000', '0000-00-00 00:00:00', 'Còn hàng', 'PG25', 'C25', '45000');
INSERT INTO `productdetails` VALUES ('sp26', 'Tủ quần áo nhựa mini', 'Dễ dàng vệ sinh tủ khi bám bụi bẩn và làm giảm sự trầy xước bề mặt tủ , chịu lực tốt', 'LUXURY', 'Nhật Bản', '900000', 'NoiThatPhongNgu/Image_NTTTPhongngu/tu-quan-ao-mini-nhua-4.jpg', '25', '900000', '0000-00-00 00:00:00', 'Còn hàng', 'PG26', 'C26', '43000');
INSERT INTO `productdetails` VALUES ('sp27', 'Đồng hồ Miso', 'Sang trọng , đẹp , trang nhã , nhỏ nhẹ', 'HABU', 'Hàn Quốc', '1000000', 'Image/dongHoMiso_SPM.PNG', '35', '1500000', '0000-00-00 00:00:00', 'Còn hàng', 'PG27', 'C27', '43000');
INSERT INTO `productdetails` VALUES ('sp28', 'Đồng hồ Tabu', 'Sang trọng , nhỏ nhẹ , màu sắc phong phú đa dạng', 'HABU', 'Hàn Quốc', '300000', 'Image/dongHoTaBu_SPM.PNG', '43', '3500000', '0000-00-00 00:00:00', 'Còn hàng', 'PG28', 'C28', '23444');
INSERT INTO `productdetails` VALUES ('sp29', 'Tủ để áo cho bé', 'Chịu lực tốt , nhỏ nhẹ , màu sắ phong phú', 'LUXURY', 'Nhật Bản', '300000', 'Image/img_4.png', '24', '400000', '0000-00-00 00:00:00', 'Còn hàng', 'PG29', 'C29', '5000');
INSERT INTO `productdetails` VALUES ('sp3', 'Sofa Bảng Bella', 'Tiện nghi', 'BELLA', 'Hàn Quốc', '2000000', 'Image/SofaBangBella.PNG', '5', '3000000', '0000-00-00 00:00:00', 'Còn hàng', 'PG3', 'C3', '4000000');
INSERT INTO `productdetails` VALUES ('sp30', 'Bàn Eames tròn', 'Họa tiết đẹp ', 'EAMES', 'Việt Nam', '5000000', 'Image/Ban_Eames_tron.webp', '23', '5500000', '0000-00-00 00:00:00', 'Còn hàng', 'PG30', 'C30', '30000');
INSERT INTO `productdetails` VALUES ('sp31', 'Ghế văn phòng', 'Nhỏ nhẹ , màu sắc đa dạng , phong phú', 'LUXURY', 'Nhật Bản', '14000000', 'NoiThatVanPhong/Image_vanphong/ghe-ngu-trua-van-phong.jpg', '27', '15000000', '0000-00-00 00:00:00', 'Còn hàng', 'PG31', 'C31', '65000');
INSERT INTO `productdetails` VALUES ('sp32', 'Bàn làm việc đẹp', 'Họa tiết đẹp ', 'EAMES', 'Việt Nam', '90000', 'Image/Ban_lam_viec_go.jpg', '34', '95000', '0000-00-00 00:00:00', 'Còn hàng', 'PG32', 'C32', '34667');
INSERT INTO `productdetails` VALUES ('sp33', 'Tủ treo quần áo', 'Chịu lực tốt , nhỏ nhẹ , màu sắ phong phú', 'LUXURY', 'Nhật Bản', '1500000', 'ImageProduct/tu-treo-quan-ao.webp', '32', '1700000', '0000-00-00 00:00:00', 'Còn hàng', 'PG33', 'C33', '54000');
INSERT INTO `productdetails` VALUES ('sp34', 'Tủ quần áo', 'Chịu lực tốt , nhỏ nhẹ , màu sắ phong phú', 'LUXURY', 'Nhật Bản', '2500000', 'ImageProduct/tu-quan-ao-canh-lua-thiet-ke.webp', '45', '2700000', '0000-00-00 00:00:00', 'Còn hàng', 'PG34', 'C34', '45000');
INSERT INTO `productdetails` VALUES ('sp35', 'Tủ quần áo', 'Chịu lực tốt , nhỏ nhẹ , màu sắ phong phú', 'LUXURY', 'Nhật Bản', '1000000', 'ImageProduct/tu-de-quan-ao-go.webp', '54', '1750000', '0000-00-00 00:00:00', 'Còn hàng', 'PG35', 'C35', '34000');
INSERT INTO `productdetails` VALUES ('sp36', 'Giường hộp gỗ', 'Với khả năng gấp gọn linh hoạt, khi không sử dụng bạn có thể gấp giường lại thành chiếc sofa màu đỏ nổi bật và sang trọng', 'HABU', 'Hàn Quốc', '4000000', 'ImageProduct/giuong-hop-go-tu-nhien.jpg', '43', '4700000', '0000-00-00 00:00:00', 'Còn hàng', 'PG36', 'C36', '54000');
INSERT INTO `productdetails` VALUES ('sp37', 'Tủ quần áo', 'Chịu lực tốt , nhỏ nhẹ , màu sắ phong phú', 'LUXURY', 'Nhật Bản', '1000000', 'NoiThatPhongNgu/Image_NTTTPhongngu/tu-quan-ao-gon-gang-khoa-hoc-1.jpg', '34', '1400000', '0000-00-00 00:00:00', 'Còn hàng', 'PG37', 'C37', '34789');
INSERT INTO `productdetails` VALUES ('sp38', 'Bộ chăn gối ngủ', 'Mẫu chăn ga gối với màu sắc không những bắt mắt mà còn vô cùng trang nhã, thanh lịch. \r\nSản phẩm được làm từ chất liệu cotton lạnh. Chất liệu vải cotton lạnh mềm mỏng nhẹ, khi sờ vào có cảm giác mát lạnh, bề mặt vải láng mịn, có độ co giãn tốt. có đặc điể', 'LUXURY', 'Nhật Bản', '200000', 'NoiThatPhongNgu/Image_NTTTPhongngu/bo-goi.jpg', '65', '250000', '0000-00-00 00:00:00', 'Còn hàng', 'PG38', 'C38', '56999');
INSERT INTO `productdetails` VALUES ('sp39', 'Bàn Làm Việc ND01', 'Bàn làm từ gỗ công nghiệp phủ Melamine (MFC) cao cấp nhập khẩu chống cháy, chống trầy xước, chống thấm nước, dễ vệ sinh lau chùi.', 'ND01', 'Thái Lan', '4000000', 'Image_Home2/banLamViecND01_layout5.PNG', '34', '5000000', '0000-00-00 00:00:00', 'Còn hàng', 'PG39', 'C39', '300000');
INSERT INTO `productdetails` VALUES ('sp4', 'Kệ Tủ HoBu', 'Nhỏ gọn', 'HOBU', 'Hàn Quốc', '2000000', 'Image/keTuHobu.PNG', '17', '5000000', '0000-00-00 00:00:00', 'Còn hàng', 'PG4', 'C4', '8000');
INSERT INTO `productdetails` VALUES ('sp40', 'Ghế phòng khách ND01', 'Một được sản xuất trên dây chuyền hiện đại với thiết kế đơn giản và trang nhã ', 'ND01', 'Thái Lan', '6000000', 'Image_Home2/ghePhongKhachND01_layout5.PNG', '54', '7000000', '0000-00-00 00:00:00', 'Còn hàng', 'PG40', 'C40', '458999');
INSERT INTO `productdetails` VALUES ('sp41', 'Nội thất phòng ngủ ND01', 'Với khả năng gấp gọn linh hoạt, khi không sử dụng bạn có thể gấp giường lại thành chiếc sofa màu đỏ nổi bật và sang trọng', 'ND01', 'Thái Lan', '150000', 'Image_Home2/noiThatPhongNguND01_layout5.PNG', '45', '155000', '0000-00-00 00:00:00', 'Còn hàng', 'PG41', 'C41', '43999');
INSERT INTO `productdetails` VALUES ('sp42', 'Nội thất phòng khách ND01', 'Được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát', 'ND01', 'Thái Lan', '15500', 'Image_Home2/phongKhachND01_layout5.PNG', '27', '115600', '0000-00-00 00:00:00', 'Còn hàng', 'PG42', 'C42', '57999');
INSERT INTO `productdetails` VALUES ('sp43', 'Bộ giường tủ phòng', 'Với khả năng gấp gọn linh hoạt, khi không sử dụng bạn có thể gấp giường lại thành chiếc sofa màu đỏ nổi bật và sang trọng', 'ND01', 'Thái Lan', '7000000', 'Image/img_6.png', '28', '5000000', '0000-00-00 00:00:00', 'Còn hàng', 'PG43', 'C43', '43221');
INSERT INTO `productdetails` VALUES ('sp44', 'Bộ bàn ghế gỗ NT01', 'Bàn làm từ gỗ công nghiệp phủ Melamine (MFC) cao cấp nhập khẩu chống cháy, chống trầy xước, chống thấm nước, dễ vệ sinh lau chùi.', 'ND01', 'Thái Lan', '4500000', 'Image/img_7.png', '22', '3350000', '0000-00-00 00:00:00', 'Còn hàng', 'PG44', 'C44', '34777');
INSERT INTO `productdetails` VALUES ('sp45', 'Bộ Sofa đẹp NT02', 'Ghế lười hạt xốp, nội thất gối lười hạt xốp, gối xốp cao cấp các loại, đa dạng mẫu mã', 'ND02', 'Việt Nam', '4000000', 'Image/img_8.png', '25', '3350000', '0000-00-00 00:00:00', 'Còn hàng', 'PG45', 'C45', '523331');
INSERT INTO `productdetails` VALUES ('sp46', 'Bộ phòng khách NT03', 'Được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát', 'NT03', 'Hàn Quốc', '7000000', 'Image/img_9.png', '20', '535000', '0000-00-00 00:00:00', 'Còn hàng', 'PG46', 'C46', '100000');
INSERT INTO `productdetails` VALUES ('sp47', 'Bàn ăn bằng gỗ', 'Bàn làm từ gỗ công nghiệp phủ Melamine (MFC) cao cấp nhập khẩu chống cháy, chống trầy xước, chống thấm nước, dễ vệ sinh lau chùi.', 'ND02', 'Việt Nam', '100000', 'Image_Home2/banAnBangGo_layout6.PNG', '26', '500000', '0000-00-00 00:00:00', 'Còn hàng', 'PG47', 'C47', '1356435');
INSERT INTO `productdetails` VALUES ('sp48', 'Bàn trang điểm', 'Sự có mặt của mẫu bàn trang điểm đẹp thiết kế nhỏ gọn sẽ làm bừng sáng cả một góc phòng ngủ của bạn. Mẫu bàn trang điểm được thiết kế đặc biệt phù hợp với không gian nhà cửa', 'ND02', 'Việt Nam', '4000000', 'Image_Home2/banTrangDiem_layout6.PNG', '20', '2400000', '0000-00-00 00:00:00', 'Còn hàng', 'PG48', 'C48', '242446');
INSERT INTO `productdetails` VALUES ('sp49', 'Ghế sofa nâu', 'Một được sản xuất trên dây chuyền hiện đại với thiết kế đơn giản và trang nhã ', 'ND02', 'Việt Nam', '500000', 'Image_Home2/gheSofaNau_layout6.PNG', '15', '350000', '0000-00-00 00:00:00', 'Còn hàng', 'PG49', 'C49', '22546');
INSERT INTO `productdetails` VALUES ('sp5', 'Kệ Treo Poplar ', 'Tiện nghi', 'POPLAR', 'Nhật Bản', '400000', 'Image/KeTreoPoplar.PNG', '10', '500000', '0000-00-00 00:00:00', 'Còn hàng', 'PG5', 'C5', '65000');
INSERT INTO `productdetails` VALUES ('sp50', 'Sofa phòng khách', 'Sofa phòng khách cổ điển, tân cổ điển cho không gian sang trọng.', 'ND02', 'Việt Nam', '750000', 'Image_Home2/sofaPhongKhach_layout6.PNG', '12', '560000', '0000-00-00 00:00:00', 'Còn hàng', 'PG50', 'C50', '2424');
INSERT INTO `productdetails` VALUES ('sp51', 'Sofa cam LOCO6', 'Một được sản xuất trên dây chuyền hiện đại với thiết kế đơn giản và trang nhã ', 'LOCO6', 'Hàn Quốc', '7000000', 'Image/img_14.png', '23', '5000000', '0000-00-00 00:00:00', 'Còn hàng', 'PG51', 'C51', '5577');
INSERT INTO `productdetails` VALUES ('sp52', 'Sofa xanh PHAT08', 'Sofa phòng khách cổ điển, tân cổ điển cho không gian sang trọng.', 'PHAT08', 'Hàn Quốc', '5000000', 'Image/img_15.png', '14', '3350000', '0000-00-00 00:00:00', 'Còn hàng', 'PG52', 'C52', '4532');
INSERT INTO `productdetails` VALUES ('sp53', 'Bộ Sofa đẹp NT04', 'Sofa phòng khách cổ điển, tân cổ điển cho không gian sang trọng.', 'NT04', 'Hàn Quốc', '10000000', 'Image/img_16.png', '11', '5000000', '0000-00-00 00:00:00', 'Còn hàng', 'PG53', 'C53', '3557');
INSERT INTO `productdetails` VALUES ('sp54', 'Giường gỗ đèn LED', 'Kiểu dáng được tích hợp giữa kệ, hộc lưu trữ ', 'LOCO6', 'Hàn Quốc', '8500000', 'Image/img_13.png', '10', '4350000', '0000-00-00 00:00:00', 'Còn hàng', 'PG54', 'C54', '3532');
INSERT INTO `productdetails` VALUES ('sp55', 'Ghế Sofa được thiết kế', 'Một được sản xuất trên dây chuyền hiện đại với thiết kế đơn giản và trang nhã ', 'LOCO6', 'Hàn Quốc', '100000', 'SanPhamDacTrung/img.png', '12', '165000', '0000-00-00 00:00:00', 'Còn hàng', 'PG55', 'C55', '4235');
INSERT INTO `productdetails` VALUES ('sp56', 'Bàn ăn tối', 'Hình dạng của bàn tròn cũng là ưu điểm nếu mọi người cùng ngồi thưởng thức một bữa tối đầm ấm vì bàn sẽ không có góc gấp', 'LOCO6', 'Hàn Quốc', '400000', 'SanPhamDacTrung/img_1.png', '11', '200000', '0000-00-00 00:00:00', 'Còn hàng', 'PG56', 'C56', '35657');
INSERT INTO `productdetails` VALUES ('sp57', 'Ghế và bàn', 'Một được sản xuất trên dây chuyền hiện đại với thiết kế đơn giản và trang nhã ', 'LOCO6', 'Hàn Quốc', '200000', 'SanPhamDacTrung/img_2.png', '32', '100000', '0000-00-00 00:00:00', 'Còn hàng', 'PG57', 'C57', '234235');
INSERT INTO `productdetails` VALUES ('sp58', 'Ghế bành hiện đại', 'Một bộ ghế sofa màu nâu sang trọng, đơn giản tinh tế sẽ là lựa chọn tuyệt vời cho những phòng khách', 'LOCO6', 'Hàn Quốc', '1000000', 'SanPhamDacTrung/img_3.png', '34', '300000', '0000-00-00 00:00:00', 'Còn hàng', 'PG58', 'C58', '35436');
INSERT INTO `productdetails` VALUES ('sp59', 'Bàn Eames tròn', 'Thiết kế nhỏ gọn, đơn giản', 'HÒA PHÁT', 'Việt Nam', '650000', 'ImageProduct/Ban_Eames_tron.webp', '15', '590000', '0000-00-00 00:00:00', 'Còn hàng', 'PG59', 'C59', '102');
INSERT INTO `productdetails` VALUES ('sp6', 'Kệ Ti Vi HoBu', 'Hài hòa , màu sắc phong phú', 'HOBU', 'Hàn Quốc', '800000', 'Image/KeTiViHoBu.PNG', '17', '900000', '0000-00-00 00:00:00', 'Còn hàng', 'PG6', 'C6', '5000');
INSERT INTO `productdetails` VALUES ('sp60', 'Bàn làm việc đẹp', 'Làm từ gỗ công nghiệp phủ sơn PU', 'HÒA PHÁT', 'Việt Nam', '850000', 'ImageProduct/Ban_lam_viec_go.jpg', '10', '720000', '0000-00-00 00:00:00', 'Còn hàng', 'PG60', 'C60', '2405');
INSERT INTO `productdetails` VALUES ('sp61', 'Bàn trang điểm', 'Bàn trắng, gỗ xoàn thiết kế tinh tế, sang trọng', 'LUXURY', 'Nhật Bản', '2800000', 'ImageProduct/Ban_trang_diem.webp', '15', '2400000', '0000-00-00 00:00:00', 'Còn hàng', 'PG61', 'C61', '1200');
INSERT INTO `productdetails` VALUES ('sp62', 'Bó hoa nghệ thuật', 'Hoa trang trí nhà cửa đẹp', 'RUBY', 'Việt Nam', '250000', 'ImageProduct/Bo-hoa-nghe-thuat-gia.webp', '20', '150000', '0000-00-00 00:00:00', 'Còn hàng', 'PG62', 'C62', '800');
INSERT INTO `productdetails` VALUES ('sp63', 'Bộ khung tranh trang trí', 'Khung trang trí gỗ, thiết kế tinh tế', 'EURO', 'Nhật Bản', '350000', 'ImageProduct/Bo-khung-tranh-trang-tri.webp', '50', '300000', '0000-00-00 00:00:00', 'Còn hàng', 'PG63', 'C63', '500');
INSERT INTO `productdetails` VALUES ('sp64', 'Cây vạn tuế', 'Cây trang trí góc nhà hoặc văn phòng', 'RUBY', 'Việt Nam', '620000', 'ImageProduct/Cay-van-tue.webp', '25', '580000', '0000-00-00 00:00:00', 'Còn hàng', 'PG64', 'C64', '250');
INSERT INTO `productdetails` VALUES ('sp65', 'Chậu cây để bàn bằng sứ', 'Chậu hoa để bàn làm việc', 'RUBY', 'Việt Nam', '280000', 'ImageProduct/Chau-cay-de-ban-bang-su.webp', '100', '220000', '0000-00-00 00:00:00', 'Còn hàng', 'PG65', 'C65', '300');
INSERT INTO `productdetails` VALUES ('sp66', 'Đèn ngủ để bàn', 'Đèn ngủ trắng họa tiết đen', 'LUXURY', 'Nhật Bản', '1100000', 'ImageProduct/Den-ngu-de-ban.webp', '50', '1080000', '0000-00-00 00:00:00', 'Còn hàng', 'PG66', 'C66', '200');
INSERT INTO `productdetails` VALUES ('sp67', 'Đèn trang trí bàn làm việc', 'Đèn để bàn vàng đồng sang trọng', 'LUXURY', 'Nhật Bản', '400000', 'ImageProduct/Den-trang-tri-ban-lam-viec.webp', '25', '350000', '0000-00-00 00:00:00', 'Còn hàng', 'PG67', 'C67', '500');
INSERT INTO `productdetails` VALUES ('sp68', 'Đèn pha lê trang trí phòng ngủ', 'Đèn ngủ pha lê tím mơ mộng, được làm từ thủy tinh', 'LUXURY', 'Nhật Bản', '600000', 'ImageProduct/den-trang-tri-de-ban-bang-pha-le.webp', '20', '529000', '0000-00-00 00:00:00', 'Còn hàng', 'PG68', 'C68', '280');
INSERT INTO `productdetails` VALUES ('sp69', 'Đèn để bàn học tập', 'Đèn học tập sáng rõ, thiết kế nhỏ gọn', 'RẠNG ĐÔNG', 'Việt Nam', '300000', 'ImageProduct/Den_de_ban.jpg', '30', '280000', '0000-00-00 00:00:00', 'Còn hàng', 'PG69', 'C69', '1000');
INSERT INTO `productdetails` VALUES ('sp7', 'Ghế Euro', 'Nhỏ gọn', 'EURO', 'Nhật Bản', '100000', 'Image/gheEuro.PNG', '10', '200000', '0000-00-00 00:00:00', 'Còn hàng', 'PG7', 'C7', '7000');
INSERT INTO `productdetails` VALUES ('sp70', 'Đồng hồ treo tường họa tiết hoa', 'Thiết kế chi tiết mới lạ', 'EURO', 'Nhật Bản', '500000', 'ImageProduct/Dong-ho-treo-ruong-hoa-tiet-hoa.webp', '20', '460000', '0000-00-00 00:00:00', 'Còn hàng', 'PG70', 'C70', '800');
INSERT INTO `productdetails` VALUES ('sp71', 'Đồng hồ treo tường khung lá cây', 'Thiết kế tạo gần gũi với thiên nhiên', 'EURO', 'Nhật Bản', '300000', 'ImageProduct/Dong-ho-treo-tuong-phong-khach-khung-la-cay.webp', '10', '260000', '0000-00-00 00:00:00', 'Còn hàng', 'PG71', 'C71', '700');
INSERT INTO `productdetails` VALUES ('sp72', 'Ghế bong bóng', 'Ghế treo được thiết kế độc lạ, chắc chắn', 'HÒA PHÁT', 'Việt Nam', '700000', 'ImageProduct/Ghe_Bong_Bong.jpg', '20', '580000', '0000-00-00 00:00:00', 'Còn hàng', 'PG72', 'C72', '800');
INSERT INTO `productdetails` VALUES ('sp73', 'Ghế Daw Fabric', 'Họa tiết thổ cẩm ', 'HÒA PHÁT', 'Việt Nam', '420000', 'ImageProduct/ghe_Daw_Fabric.jpg', '15', '370000', '0000-00-00 00:00:00', 'Còn hàng', 'PG73', 'C73', '300');
INSERT INTO `productdetails` VALUES ('sp74', 'Sofa', 'Sofa phòng khách thiết kế đơn giản', 'HÒA PHÁT', 'Việt Nam', '2100000', 'ImageProduct/ghe_Sofa.jpg', '20', '2070000', '0000-00-00 00:00:00', 'Còn hàng', 'PG74', 'C74', '800');
INSERT INTO `productdetails` VALUES ('sp75', 'Ghế Diamond', 'Kim loại cứng, thiết kế độc lạ', 'HÒA PHÁT', 'Việt Nam', '480000', 'ImageProduct/Ghe_Diamond.jpg', '30', '400000', '0000-00-00 00:00:00', 'Còn hàng', 'PG75', 'C75', '1000');
INSERT INTO `productdetails` VALUES ('sp76', 'Ghế Sofa giường kéo', 'Tiện lợi, dễ sử dụng', 'HÒA PHÁT', 'Việt Nam', '3000000', 'ImageProduct/Ghe_Sofa_giuong_keo.jpg', '8', '2600000', '0000-00-00 00:00:00', 'Còn hàng', 'PG76', 'C76', '500');
INSERT INTO `productdetails` VALUES ('sp77', 'Giá sách để bàn', 'Thiết kế đơn giản, tiện dụng', 'RUBY', 'Việt Nam', '100000', 'ImageProduct/Gia-sach-de-ban.webp', '20', '80000', '0000-00-00 00:00:00', 'Còn hàng', 'PG77', 'C77', '600');
INSERT INTO `productdetails` VALUES ('sp78', 'Gối Sofa', 'Họa tiết đen trắng ', 'SOLY', 'Việt Nam', '120000', 'ImageProduct/Goi_sofa.webp', '15', '100000', '0000-00-00 00:00:00', 'Còn hàng', 'PG78', 'C78', '100');
INSERT INTO `productdetails` VALUES ('sp79', 'Giường đôi ngăn dưới', 'Màu kem, có ngăn', 'HÒA PHÁT', 'Việt Nam', '9000000', 'ImageProduct/Giuong_doi_ngan_duoi.webp', '5', '8700000', '0000-00-00 00:00:00', 'Còn hàng', 'PG79', 'C79', '1596');
INSERT INTO `productdetails` VALUES ('sp8', 'Gối tựa lưng', 'Mềm , màu sắc đa dạng', 'LUXURY', 'Nhật Bản', '100000', 'ImageProduct/Goi-tua-lung-van-phong.webp', '7', '110000', '0000-00-00 00:00:00', 'Còn hàng', 'PG8', 'C8', '8000');
INSERT INTO `productdetails` VALUES ('sp80', 'Gối tựa lưng', 'Gối tựa lưng để sofa họa tiết hồng', 'SOLY', 'Việt Nam', '120000', 'ImageProduct/goi_tua_lung.webp', '12', '100000', '0000-00-00 00:00:00', 'Còn hàng', 'PG80', 'C80', '1000');
INSERT INTO `productdetails` VALUES ('sp81', 'Gương trang trí phòng', 'Thiết kế bắt mắt, chi tiết', 'LUXURY', 'Nhật Bản', '1150000', 'ImageProduct/Guong-trang-tri-gia-dinh.webp', '10', '1100000', '0000-00-00 00:00:00', 'Còn hàng', 'PG81', 'C81', '123');
INSERT INTO `productdetails` VALUES ('sp82', 'Gương trang trí siêu sang', 'Họa tiết lá hoa vàng đồng', 'LUXURY', 'Nhật Bản', '1600000', 'ImageProduct/Guong-trang-tri-treo-tuong.webp', '8', '1500000', '0000-00-00 00:00:00', 'Còn hàng', 'PG82', 'C82', '41');
INSERT INTO `productdetails` VALUES ('sp83', 'Bình hoa hướng dương để bàn', 'Bình hoa để bàn nhỏ xinh', 'RUBY', 'Việt Nam', '320000', 'ImageProduct/Hoa-huong-duong.webp', '50', '290000', '0000-00-00 00:00:00', 'Còn hàng', 'PG83', 'C83', '1470');
INSERT INTO `productdetails` VALUES ('sp84', 'Kệ gỗ treo quần áo', 'Chịu lực tốt ', 'HÒA PHÁT', 'Việt Nam', '700000', 'ImageProduct/Ke-go-treo-quan-ao-thiet-ke-nho-gon.jpg', '15', '620000', '0000-00-00 00:00:00', 'Còn hàng', 'PG84', 'C84', '1254');
INSERT INTO `productdetails` VALUES ('sp85', 'Kệ gỗ di động màu trắng', 'Kệ gỗ thuận tiện di chuyển', 'HÒA PHÁT', 'Việt Nam', '850000', 'ImageProduct/ke-goc-di-dong-mau-trang.webp', '20', '800000', '0000-00-00 00:00:00', 'Còn hàng', 'PG85', 'C85', '10');
INSERT INTO `productdetails` VALUES ('sp86', 'Khung tranh để bàn', 'Khung kim loại bền', 'RUBY', 'Việt Nam', '180000', 'ImageProduct/Khung-tranh-de-ban.webp', '10', '150000', '0000-00-00 00:00:00', 'Còn hàng', 'PG86', 'C86', '123');
INSERT INTO `productdetails` VALUES ('sp87', 'Móc treo đồ hình dễ thương', 'Móc treo gỗ dán tường', 'RUBY', 'Việt Nam', '100000', 'ImageProduct/Moc-treo-do-gan-tuong-hinh-de-thuong.webp', '15', '60000', '0000-00-00 00:00:00', 'Còn hàng', 'PG87', 'C87', '154');
INSERT INTO `productdetails` VALUES ('sp88', 'Móc gán tường', 'Móc gán thiết kế đơn giản hình chiếc dép', 'RUBY', 'Việt Nam', '60000', 'ImageProduct/moc-treo-do-gia-dinh-gan-tuong.webp', '36', '40000', '0000-00-00 00:00:00', 'Còn hàng', 'PG88', 'C88', '1200');
INSERT INTO `productdetails` VALUES ('sp89', 'Kệ gỗ nhỏ gọn', 'Làm từ gỗ xoàn, nhiều ngăn ', 'HÒA PHÁT', 'Việt Nam', '3700000', 'ImageProduct/Ke-go-de-do-kieu-dang-nho-gon.webp', '45', '3520000', '0000-00-00 00:00:00', 'Còn hàng', 'PG89', 'C89', '124');
INSERT INTO `productdetails` VALUES ('sp9', 'Sofa phòng khách', 'Tiện nghi', 'LUXURY', 'Nhật Bản', '1000000', 'ImageProduct/Sofapk.jpg', '10', '2280000', '0000-00-00 00:00:00', 'Còn hàng', 'PG9', 'C9', '6500');
INSERT INTO `productdetails` VALUES ('sp90', 'Kệ gỗ treo tường tiện dụng', 'Kệ treo tường phủ sơn trắng', 'HÒA PHÁT', 'Việt Nam', '700000', 'ImageProduct/ke-go-treo-tuong-tien-dung.webp', '7', '680000', '0000-00-00 00:00:00', 'Còn hàng', 'PG90', 'C90', '1236');
INSERT INTO `productdetails` VALUES ('sp91', 'Bàn ghế cafe', 'Bộ bàn ghế làm từ kim loại, bền, chất lượng', 'HÒA PHÁT', 'Việt Nam', '1850000', 'ImageProduct/ban_ghe_cafe.jpg', '52', '1650000', '0000-00-00 00:00:00', 'Còn hàng', 'PG91', 'C91', '1458');
INSERT INTO `productdetails` VALUES ('sp92', 'Bàn ghế Cafe BGC71', 'Bộ bàn ghế gỗ có đệm lót', 'HÒA PHÁT', 'Việt Nam', '1950000', 'ImageProduct/ban_ghe_cafe1.jpg', '10', '1730000', '0000-00-00 00:00:00', 'Còn hàng', 'PG92', 'C92', '12');
INSERT INTO `productdetails` VALUES ('sp93', 'Cây trang trí góc nhà', 'Cây xanh trang trí nhà ', 'RUBY', 'Việt Nam', '650000', 'ImageProduct/Cay_trang_tri.jpg', '14', '580000', '0000-00-00 00:00:00', 'Còn hàng', 'PG93', 'C93', '145');
INSERT INTO `productdetails` VALUES ('sp94', 'Combo chậu Korea', 'Chậu rửa inox ', 'LUXURY', 'Nhật Bản', '1700000', 'ImageProduct/Combo_chau_Korea.jpg', '19', '1550000', '0000-00-00 00:00:00', 'Còn hàng', 'PG94', 'C94', '456');
INSERT INTO `productdetails` VALUES ('sp95', 'Tủ chậu Lavabo', 'Chậu lavabo thiết kế tinh tế', 'HÒA PHÁT', 'Việt Nam', '1860000', 'ImageProduct/tu_chau_Lavabo.jpeg', '15', '1560000', '0000-00-00 00:00:00', 'Còn hàng', 'PG95', 'C95', '1258');
INSERT INTO `productdetails` VALUES ('sp96', 'Ghế bong bóng', 'Thiết kế đẹp, ghế treo tường', 'HÒA PHÁT', 'Việt Nam', '650000', 'ImageProduct/Ghe_Bong_Bong.jpg', '16', '580000', '0000-00-00 00:00:00', 'Còn hàng', 'PG96', 'C96', '18');
INSERT INTO `productdetails` VALUES ('sp97', 'Gương led phun cat', 'Có lắp đèn led, gương sáng', 'HÒA PHÁT', 'Việt Nam', '400000', 'ImageProduct/guong-led-phun-cat.jpeg', '18', '370000', '0000-00-00 00:00:00', 'Còn hàng', 'PG97', 'C97', '852');
INSERT INTO `productdetails` VALUES ('sp98', 'Chậu rửa', 'Chậu rửa inox, 2 ngăn', 'HÒA PHÁT', 'Việt Nam', '1700000', 'ImageProduct/chau_rua_korea.jpg', '28', '1670000', '0000-00-00 00:00:00', 'Còn hàng', 'PG98', 'C98', '546');
INSERT INTO `productdetails` VALUES ('sp99', 'Bó hoa trang trí chất lượng', 'Hoa trang trí nhà cửa màu sắc nhẹ nhàng', 'RUBY', 'Việt Nam', '220000', 'ImageProduct/Bo-hoa-trang-tri-an-tuong-chat-luong.webp', '63', '200000', '0000-00-00 00:00:00', 'Còn hàng', 'PG99', 'C99', '245');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `idProfile` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `postalcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `aboutme` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `friends` int NULL DEFAULT NULL,
  `photos` int NULL DEFAULT NULL,
  `comments` int NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idProfile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES (1, 'John Snow', 'JohnSnow@gmail.com', 'John', 'Snow', 'Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09', 'New York', 'United States', '7', 'A beautiful Dashboard .', 27, 22, 10, 89, 'Solution Manager - Creative Tim Officer\r\nUniversity of Computer Science');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Đậu Hoa', '12345', '19130075@st.hcmuaf.edu.vn');

SET FOREIGN_KEY_CHECKS = 1;
