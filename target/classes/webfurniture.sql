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

 Date: 19/01/2022 22:34:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for productdetails
-- ----------------------------
DROP TABLE IF EXISTS `productdetails`;
CREATE TABLE `productdetails`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `trademark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `production` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `priceOld` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `linkImage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `quantitySold` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `priceNew` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dateSubmitted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `idProductGroups` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `idCategory` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `viewProductDetails` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productdetails
-- ----------------------------
INSERT INTO `productdetails` VALUES ('sp1', 'Tủ bếp đơn giản', 'Tiện nghi', 'LUXURY', 'Nhật Bản', '500000', 'Image/img_1.png', '20', '1', '1000000', '3/1/2022 20:49:36', 'Còn hàng', 'PG1', 'C1', '5000');
INSERT INTO `productdetails` VALUES ('sp10', 'Bàn trà', 'Nhỏ gọn', 'LUXURY', 'Nhật Bản', '1000000', 'ImageProduct/ban-tra-chong-tham-nuoc.jpg', '15', '1', '1529000', '4/1/2022 08:13:25', 'Còn hàng', 'PG10', 'C10', '100000');
INSERT INTO `productdetails` VALUES ('sp11', 'Gối Sofa hiện đại', 'Mềm mại , nhỏ nhẹ ', 'LUXURY', 'Nhật Bản', '100000', 'ImageProduct/Goi-tua-lung-sofa-phong-cach-hien-dai.webp', '15', '1', '16000', '4/1/2022 08:13:28', 'Còn hàng', 'PG11', 'C11', '4000');
INSERT INTO `productdetails` VALUES ('sp12', 'Đệm ngồi', 'Mềm mại', 'LUXURY', 'Nhật Bản', '100000', 'ImageProduct/Dem-ngoi-hinh-vuong-phong-cach.webp', '40', '1', '120000', '4/1/2022 08:13:31', 'Còn hàng', 'PG12', 'C12', '9000');
INSERT INTO `productdetails` VALUES ('sp13', 'Bàn trà phòng khách', 'Tiện nghi', 'LUXURY', 'Nhật Bản', '1000000', 'ImageProduct/ban-tra-phong-khach.webp', '35', '1', '1280000', '4/1/2022 08:13:34', 'Còn hàng', 'PG13', 'C13', '4000');
INSERT INTO `productdetails` VALUES ('sp14', 'Bàn làm việc chữ L', 'Tiện nghi', 'LUXURY', 'Nhật Bản', '500000', 'NoiThatVanPhong/Image_vanphong/ban-lam-viec-chu-l-chan-sat.jpg', '20', '1', '700000', '4/1/2022 16:01:21', 'Còn hàng', 'PG14', 'C14', '1000000');
INSERT INTO `productdetails` VALUES ('sp15', 'Đồng hồ treo tường', 'Màu sắc đa dạng', 'Poplar', 'Hàn Quốc', '100000', 'NoiThatVanPhong/Image_vanphong/dongho.jpg', '43', '1', '400000', '4/1/2022 16:01:25', 'Còn hàng', 'PG15', 'C15', '4500');
INSERT INTO `productdetails` VALUES ('sp16', 'Đèn led', 'Nhỏ gọn , tia sáng mạnh', 'HABU', 'Hàn Quốc', '100000', 'NoiThatVanPhong/Image_vanphong/den-led-de.jpg', '65', '1', '270000', '4/1/2022 16:01:28', 'Còn hàng', 'PG16', 'C16', '9500');
INSERT INTO `productdetails` VALUES ('sp17', 'Ghế sofa văn phòng', 'Mềm mại , nhỏ nhẹ , tiện nghi', 'LUXURY', 'Nhật Bản', '3000000', 'NoiThatVanPhong/Image_vanphong/ghe-van-phong-sofa.jpg', '34', '1', '3100000', '4/1/2022 16:01:32', 'Còn hàng', 'PG17', 'C17', '8000');
INSERT INTO `productdetails` VALUES ('sp18', 'Bàn trà đơn giản', 'Họa tiết đẹp mắt , màu sơn đa dạng , hài hòa', 'DERGO', 'Thái Lan', '500000', 'NoiThatPhongKhach/Image_NTTTPhongkhach/ban-tra.png', '24', '1', '990000', '4/1/2022 16:01:35', 'Còn hàng', 'PG18', 'C18', '3500000');
INSERT INTO `productdetails` VALUES ('sp19', 'Bàn trà sofa', 'Họa tiết đẹp mắt , màu sơn đa dạng , hài hòa', 'DERGO', 'Thái Lan', '1000000', 'NoiThatPhongKhach/Image_NTTTPhongkhach/ban-sofa.webp', '54', '1', '1500000', '4/1/2022 16:01:38', 'Còn hàng', 'PG19', 'C19', '9000');
INSERT INTO `productdetails` VALUES ('sp2', 'Tủ HaBu', 'Nhỏ nhẹ', 'HABU', 'Hàn Quốc', '350000', 'Image/TuHabu.PNG', '10', '1', '500000', '4/1/2022 00:02:36', 'Còn hàng', 'PG2', 'C2', '7500');
INSERT INTO `productdetails` VALUES ('sp20', 'Khung tranh để bàn', 'Khung tranh treo bền đẹp , chất lượng đảm bảo', 'KTTD', 'Việt Nam', '100000', 'ImageProduct/Khung-tranh-de-ban.webp', '34', '1', '150000', '4/1/2022 16:01:42', 'Còn hàng', 'PG20', 'C20', '5000');
INSERT INTO `productdetails` VALUES ('sp21', 'Bàn làm việc văn phòng', 'Tiện nghi , nhỏ nhẹ , màu sắc phong phú đa dạng', 'LUXURY', 'Nhật Bản', '2000000', 'NoiThatVanPhong/Image_vanphong/ban-van-phong.jpg', '10', '1', '2080000', '4/1/2022 16:01:45', 'Còn hàng', 'PG21', 'C21', '43000');
INSERT INTO `productdetails` VALUES ('sp22', 'Ghế sofa bọc nỉ chân cao', 'Mềm mại , chân cao , nhỏ gọn ', 'LUXURY', 'Nhật Bản', '500000', 'Image/img_2.png', '12', '1', '700000', '4/1/2022 16:01:49', 'Còn hàng', 'PG22', 'C22', '45000');
INSERT INTO `productdetails` VALUES ('sp23', ' Ghế đôn bọc da cao cấp', 'Bọc da cao cấp , đa dạng phong phú ', 'Porplar', 'Thái Lan', '500000', 'Image/img_3.png', '13', '1', '1000000', '4/1/2022 16:01:53', 'Còn hàng', 'PG23', 'C23', '34000');
INSERT INTO `productdetails` VALUES ('sp24', 'Bàn Aillen 03', 'Họa tiết đẹp mắt , màu sơn đa dạng , hài hòa', 'DERGO', 'Thái Lan', '1000000', 'Image/BanAillen03_SPH.PNG', '32', '1', '1400000', '4/1/2022 16:01:57', 'Còn hàng', 'PG24', 'C24', '43567');
INSERT INTO `productdetails` VALUES ('sp25', 'Bàn Binas', 'Màu sắc đa dạng', 'DERGO', 'Thái Lan', '800000', 'Image/BanBinas_SPH.PNG', '15', '1', '900000', '4/1/2022 16:02:00', 'Còn hàng', 'PG25', 'C25', '45000');
INSERT INTO `productdetails` VALUES ('sp26', 'Tủ quần áo nhựa mini', 'Dễ dàng vệ sinh tủ khi bám bụi bẩn và làm giảm sự trầy xước bề mặt tủ , chịu lực tốt', 'LUXURY', 'Nhật Bản', '900000', 'NoiThatPhongNgu/Image_NTTTPhongngu/tu-quan-ao-mini-nhua-4.jpg', '25', '1', '900000', '4/1/2022 16:02:03', 'Còn hàng', 'PG26', 'C26', '43000');
INSERT INTO `productdetails` VALUES ('sp27', 'Đồng hồ Miso', 'Sang trọng , đẹp , trang nhã , nhỏ nhẹ', 'HABU', 'Hàn Quốc', '1000000', 'Image/dongHoMiso_SPM.PNG', '35', '1', '1500000', '4/1/2022 16:02:06', 'Còn hàng', 'PG27', 'C27', '43000');
INSERT INTO `productdetails` VALUES ('sp28', 'Đồng hồ Tabu', 'Sang trọng , nhỏ nhẹ , màu sắc phong phú đa dạng', 'HABU', 'Hàn Quốc', '300000', 'Image/dongHoTaBu_SPM.PNG', '43', '1', '3500000', '4/1/2022 16:02:10', 'Còn hàng', 'PG28', 'C28', '23444');
INSERT INTO `productdetails` VALUES ('sp29', 'Tủ để áo cho bé', 'Chịu lực tốt , nhỏ nhẹ , màu sắ phong phú', 'LUXURY', 'Nhật Bản', '300000', 'Image/img_4.png', '24', '1', '400000', '4/1/2022 16:02:13', 'Còn hàng', 'PG29', 'C29', '5000');
INSERT INTO `productdetails` VALUES ('sp3', 'Sofa Bảng Bella', 'Tiện nghi', 'BELLA', 'Hàn Quốc', '2000000', 'Image/SofaBangBella.PNG', '5', '1', '3000000', '4/1/2022 08:05:18', 'Còn hàng', 'PG3', 'C3', '4000000');
INSERT INTO `productdetails` VALUES ('sp30', 'Bàn Eames tròn', 'Họa tiết đẹp ', 'EAMES', 'Việt Nam', '5000000', 'Image/Ban_Eames_tron.webp', '23', '1', '5500000', '4/1/2022 16:02:16', 'Còn hàng', 'PG30', 'C30', '30000');
INSERT INTO `productdetails` VALUES ('sp31', 'Ghế văn phòng', 'Nhỏ nhẹ , màu sắc đa dạng , phong phú', 'LUXURY', 'Nhật Bản', '14000000', 'NoiThatVanPhong/Image_vanphong/ghe-ngu-trua-van-phong.jpg', '27', '1', '15000000', '4/1/2022 16:56:08', 'Còn hàng', 'PG31', 'C31', '65000');
INSERT INTO `productdetails` VALUES ('sp32', 'Bàn làm việc đẹp', 'Họa tiết đẹp ', 'EAMES', 'Việt Nam', '90000', 'Image/Ban_lam_viec_go.jpg', '34', '1', '95000', '4/1/2022 16:56:11', 'Còn hàng', 'PG32', 'C32', '34667');
INSERT INTO `productdetails` VALUES ('sp33', 'Tủ treo quần áo', 'Chịu lực tốt , nhỏ nhẹ , màu sắ phong phú', 'LUXURY', 'Nhật Bản', '1500000', 'ImageProduct/tu-treo-quan-ao.webp', '32', '1', '1700000', '4/1/2022 16:56:14', 'Còn hàng', 'PG33', 'C33', '54000');
INSERT INTO `productdetails` VALUES ('sp34', 'Tủ quần áo', 'Chịu lực tốt , nhỏ nhẹ , màu sắ phong phú', 'LUXURY', 'Nhật Bản', '2500000', 'ImageProduct/tu-quan-ao-canh-lua-thiet-ke.webp', '45', '1', '2700000', '4/1/2022 16:56:18', 'Còn hàng', 'PG34', 'C34', '45000');
INSERT INTO `productdetails` VALUES ('sp35', 'Tủ quần áo', 'Chịu lực tốt , nhỏ nhẹ , màu sắ phong phú', 'LUXURY', 'Nhật Bản', '1000000', 'ImageProduct/tu-de-quan-ao-go.webp', '54', '1', '1750000', '4/1/2022 16:56:21', 'Còn hàng', 'PG35', 'C35', '34000');
INSERT INTO `productdetails` VALUES ('sp36', 'Giường hộp gỗ', 'Với khả năng gấp gọn linh hoạt, khi không sử dụng bạn có thể gấp giường lại thành chiếc sofa màu đỏ nổi bật và sang trọng', 'HABU', 'Hàn Quốc', '4000000', 'ImageProduct/giuong-hop-go-tu-nhien.jpg', '43', '1', '4700000', '4/1/2022 16:56:24', 'Còn hàng', 'PG36', 'C36', '54000');
INSERT INTO `productdetails` VALUES ('sp37', 'Tủ quần áo', 'Chịu lực tốt , nhỏ nhẹ , màu sắ phong phú', 'LUXURY', 'Nhật Bản', '1000000', 'NoiThatPhongNgu/Image_NTTTPhongngu/tu-quan-ao-gon-gang-khoa-hoc-1.jpg', '34', '1', '1400000', '4/1/2022 16:56:27', 'Còn hàng', 'PG37', 'C37', '34789');
INSERT INTO `productdetails` VALUES ('sp38', 'Bộ chăn gối ngủ', 'Mẫu chăn ga gối với màu sắc không những bắt mắt mà còn vô cùng trang nhã, thanh lịch. \r\nSản phẩm được làm từ chất liệu cotton lạnh. Chất liệu vải cotton lạnh mềm mỏng nhẹ, khi sờ vào có cảm giác mát lạnh, bề mặt vải láng mịn, có độ co giãn tốt. có đặc điể', 'LUXURY', 'Nhật Bản', '200000', 'NoiThatPhongNgu/Image_NTTTPhongngu/bo-goi.jpg', '65', '1', '250000', '4/1/2022 16:56:30', 'Còn hàng', 'PG38', 'C38', '56999');
INSERT INTO `productdetails` VALUES ('sp39', 'Bàn Làm Việc ND01', 'Bàn làm từ gỗ công nghiệp phủ Melamine (MFC) cao cấp nhập khẩu chống cháy, chống trầy xước, chống thấm nước, dễ vệ sinh lau chùi.', 'ND01', 'Thái Lan', '4000000', 'Image_Home2/banLamViecND01_layout5.PNG', '34', '1', '5000000', '4/1/2022 16:56:34', 'Còn hàng', 'PG39', 'C39', '300000');
INSERT INTO `productdetails` VALUES ('sp4', 'Kệ Tủ HoBu', 'Nhỏ gọn', 'HOBU', 'Hàn Quốc', '2000000', 'Image/keTuHobu.PNG', '17', '1', '5000000', '4/1/2022 08:07:43', 'Còn hàng', 'PG4', 'C4', '8000');
INSERT INTO `productdetails` VALUES ('sp40', 'Ghế phòng khách ND01', 'Một được sản xuất trên dây chuyền hiện đại với thiết kế đơn giản và trang nhã ', 'ND01', 'Thái Lan', '6000000', 'Image_Home2/ghePhongKhachND01_layout5.PNG', '54', '1', '7000000', '4/1/2022 16:56:36', 'Còn hàng', 'PG40', 'C40', '458999');
INSERT INTO `productdetails` VALUES ('sp41', 'Nội thất phòng ngủ ND01', 'Với khả năng gấp gọn linh hoạt, khi không sử dụng bạn có thể gấp giường lại thành chiếc sofa màu đỏ nổi bật và sang trọng', 'ND01', 'Thái Lan', '150000', 'Image_Home2/noiThatPhongNguND01_layout5.PNG', '45', '1', '155000', '4/1/2022 16:56:39', 'Còn hàng', 'PG41', 'C41', '43999');
INSERT INTO `productdetails` VALUES ('sp42', 'Nội thất phòng khách ND01', 'Được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát', 'ND01', 'Thái Lan', '15500', 'Image_Home2/phongKhachND01_layout5.PNG', '27', '1', '115600', '4/1/2022 16:56:42', 'Còn hàng', 'PG42', 'C42', '57999');
INSERT INTO `productdetails` VALUES ('sp43', 'Bộ giường tủ phòng', 'Với khả năng gấp gọn linh hoạt, khi không sử dụng bạn có thể gấp giường lại thành chiếc sofa màu đỏ nổi bật và sang trọng', 'ND01', 'Thái Lan', '7000000', 'Image/img_6.png', '28', '1', '5000000', '4/1/2022 16:56:45', 'Còn hàng', 'PG43', 'C43', '43221');
INSERT INTO `productdetails` VALUES ('sp44', 'Bộ bàn ghế gỗ NT01', 'Bàn làm từ gỗ công nghiệp phủ Melamine (MFC) cao cấp nhập khẩu chống cháy, chống trầy xước, chống thấm nước, dễ vệ sinh lau chùi.', 'ND01', 'Thái Lan', '4500000', 'Image/img_7.png', '22', '1', '3350000', '4/1/2022 16:56:49', 'Còn hàng', 'PG44', 'C44', '34777');
INSERT INTO `productdetails` VALUES ('sp45', 'Bộ Sofa đẹp NT02', 'Ghế lười hạt xốp, nội thất gối lười hạt xốp, gối xốp cao cấp các loại, đa dạng mẫu mã', 'ND02', 'Việt Nam', '4000000', 'Image/img_8.png', '25', '1', '3350000', '4/1/2022 16:56:55', 'Còn hàng', 'PG45', 'C45', '523331');
INSERT INTO `productdetails` VALUES ('sp46', 'Bộ phòng khách NT03', 'Được thiết kế tinh tế sang trọng nội thất đầy đủ tiện nghi hiện đại, cửa sổ kính rộng thoáng bao quát', 'NT03', 'Hàn Quốc', '7000000', 'Image/img_9.png', '20', '1', '535000', '4/1/2022 20:37:07', 'Còn hàng', 'PG46', 'C46', '100000');
INSERT INTO `productdetails` VALUES ('sp47', 'Bàn ăn bằng gỗ', 'Bàn làm từ gỗ công nghiệp phủ Melamine (MFC) cao cấp nhập khẩu chống cháy, chống trầy xước, chống thấm nước, dễ vệ sinh lau chùi.', 'ND02', 'Việt Nam', '100000', 'Image_Home2/banAnBangGo_layout6.PNG', '26', '1', '500000', '4/1/2022 16:57:01', 'Còn hàng', 'PG47', 'C47', '1356435');
INSERT INTO `productdetails` VALUES ('sp48', 'Bàn trang điểm', 'Sự có mặt của mẫu bàn trang điểm đẹp thiết kế nhỏ gọn sẽ làm bừng sáng cả một góc phòng ngủ của bạn. Mẫu bàn trang điểm được thiết kế đặc biệt phù hợp với không gian nhà cửa', 'ND02', 'Việt Nam', '4000000', 'Image_Home2/banTrangDiem_layout6.PNG', '20', '1', '2400000', '4/1/2022 16:57:04', 'Còn hàng', 'PG48', 'C48', '242446');
INSERT INTO `productdetails` VALUES ('sp49', 'Ghế sofa nâu', 'Một được sản xuất trên dây chuyền hiện đại với thiết kế đơn giản và trang nhã ', 'ND02', 'Việt Nam', '500000', 'Image_Home2/gheSofaNau_layout6.PNG', '15', '1', '350000', '4/1/2022 16:57:07', 'Còn hàng', 'PG49', 'C49', '22546');
INSERT INTO `productdetails` VALUES ('sp5', 'Kệ Treo Poplar ', 'Tiện nghi', 'POPLAR', 'Nhật Bản', '400000', 'Image/KeTreoPoplar.PNG', '10', '1', '500000', '4/1/2022 08:10:01', 'Còn hàng', 'PG5', 'C5', '65000');
INSERT INTO `productdetails` VALUES ('sp50', 'Sofa phòng khách', 'Sofa phòng khách cổ điển, tân cổ điển cho không gian sang trọng.', 'ND02', 'Việt Nam', '750000', 'Image_Home2/sofaPhongKhach_layout6.PNG', '12', '1', '560000', '4/1/2022 16:57:10', 'Còn hàng', 'PG50', 'C50', '2424');
INSERT INTO `productdetails` VALUES ('sp51', 'Sofa cam LOCO6', 'Một được sản xuất trên dây chuyền hiện đại với thiết kế đơn giản và trang nhã ', 'LOCO6', 'Hàn Quốc', '7000000', 'Image/img_14.png', '23', '1', '5000000', '4/1/2022 16:57:13', 'Còn hàng', 'PG51', 'C51', '5577');
INSERT INTO `productdetails` VALUES ('sp52', 'Sofa xanh PHAT08', 'Sofa phòng khách cổ điển, tân cổ điển cho không gian sang trọng.', 'PHAT08', 'Hàn Quốc', '5000000', 'Image/img_15.png', '14', '1', '3350000', '4/1/2022 17:05:13', 'Còn hàng', 'PG52', 'C52', '4532');
INSERT INTO `productdetails` VALUES ('sp53', 'Bộ Sofa đẹp NT04', 'Sofa phòng khách cổ điển, tân cổ điển cho không gian sang trọng.', 'NT04', 'Hàn Quốc', '10000000', 'Image/img_16.png', '11', '1', '5000000', '4/1/2022 17:05:16', 'Còn hàng', 'PG53', 'C53', '3557');
INSERT INTO `productdetails` VALUES ('sp54', 'Giường gỗ đèn LED', 'Kiểu dáng được tích hợp giữa kệ, hộc lưu trữ ', 'LOCO6', 'Hàn Quốc', '8500000', 'Image/img_13.png', '10', '1', '4350000', '4/1/2022 17:05:18', 'Còn hàng', 'PG54', 'C54', '3532');
INSERT INTO `productdetails` VALUES ('sp55', 'Ghế Sofa được thiết kế', 'Một được sản xuất trên dây chuyền hiện đại với thiết kế đơn giản và trang nhã ', 'LOCO6', 'Hàn Quốc', '100000', 'SanPhamDacTrung/img.png', '12', '1', '165000', '4/1/2022 17:05:21', 'Còn hàng', 'PG55', 'C55', '4235');
INSERT INTO `productdetails` VALUES ('sp56', 'Bàn ăn tối', 'Hình dạng của bàn tròn cũng là ưu điểm nếu mọi người cùng ngồi thưởng thức một bữa tối đầm ấm vì bàn sẽ không có góc gấp', 'LOCO6', 'Hàn Quốc', '400000', 'SanPhamDacTrung/img_1.png', '11', '1', '200000', '4/1/2022 17:05:25', 'Còn hàng', 'PG56', 'C56', '35657');
INSERT INTO `productdetails` VALUES ('sp57', 'Ghế và bàn', 'Một được sản xuất trên dây chuyền hiện đại với thiết kế đơn giản và trang nhã ', 'LOCO6', 'Hàn Quốc', '200000', 'SanPhamDacTrung/img_2.png', '32', '1', '100000', '4/1/2022 17:05:28', 'Còn hàng', 'PG57', 'C57', '234235');
INSERT INTO `productdetails` VALUES ('sp58', 'Ghế bành hiện đại', 'Một bộ ghế sofa màu nâu sang trọng, đơn giản tinh tế sẽ là lựa chọn tuyệt vời cho những phòng khách', 'LOCO6', 'Hàn Quốc', '1000000', 'SanPhamDacTrung/img_3.png', '34', '1', '300000', '4/1/2022 17:05:30', 'Còn hàng', 'PG58', 'C58', '35436');
INSERT INTO `productdetails` VALUES ('sp6', 'Kệ Ti Vi HoBu', 'Hài hòa , màu sắc phong phú', 'HOBU', 'Hàn Quốc', '800000', 'Image/KeTiViHoBu.PNG', '17', '1', '900000', '4/1/2022 08:10:07', 'Còn hàng', 'PG6', 'C6', '5000');
INSERT INTO `productdetails` VALUES ('sp7', 'Ghế Euro', 'Nhỏ gọn', 'EURO', 'Nhật Bản', '100000', 'Image/gheEuro.PNG', '10', '1', '200000', '4/1/2022 08:10:11', 'Còn hàng', 'PG7', 'C7', '7000');
INSERT INTO `productdetails` VALUES ('sp8', 'Gối tựa lưng', 'Mềm , màu sắc đa dạng', 'LUXURY', 'Nhật Bản', '100000', 'ImageProduct/Goi-tua-lung-van-phong.webp', '7', '1', '110000', '4/1/2022 08:13:19', 'Còn hàng', 'PG8', 'C8', '8000');
INSERT INTO `productdetails` VALUES ('sp9', 'Sofa phòng khách', 'Tiện nghi', 'LUXURY', 'Nhật Bản', '1000000', 'ImageProduct/Sofapk.jpg', '10', '1', '2280000', '4/1/2022 08:13:22', 'Còn hàng', 'PG9', 'C9', '6500');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('USER000003', 'edfe', 'fefef', 'fefe@fgdgf.fsufhgf');
INSERT INTO `user` VALUES ('USER000004', 'Giang', '1234567890', 'lequocsongiang@gmail.com');
INSERT INTO `user` VALUES ('USER000005', 'TuanAnh', '12345', '1234@st.hcmuaf.edu.vn');
INSERT INTO `user` VALUES ('USER000006', 'fwerf', 'fef', 'admin123@gmail.com');
INSERT INTO `user` VALUES ('USER000007', 'fwerf', 'fef', 'admin123@gmail.com');
INSERT INTO `user` VALUES ('USER000008', 'Le Quoc Son Giang', '12345', 'lequocsongiang@gmail.com');
INSERT INTO `user` VALUES ('USER001', 'giang', '12345', 'qqqq@gmail.com');
INSERT INTO `user` VALUES ('USER002', 'Anh', '12345', 'aaa@gmail.com');

SET FOREIGN_KEY_CHECKS = 1;
