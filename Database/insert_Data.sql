USE Mobile
GO

INSERT INTO dbo.Users
(userName, password, fullName, address, email, phone, createDate, roleId, status)
VALUES
('Admin', '12345', N'Nguyễn Thành Công', N'HCM', N'ntcong@gmail.com', '0329738149', CAST('2021-07-25' AS DATETIME), 1, 1),
('User', '12345', N'Nguyễn Văn Nam', N'HCM', N'nam@gmail.com', '0329738149', CAST('2021-07-25' AS DATETIME), 2, 1)
GO

INSERT INTO dbo.roles(code, name)
VALUES('Admin', N'Quản trị viên'),
('User', N'Thành viên')
GO

INSERT INTO dbo.Categories
(name, createdDate, createdBy, userId)
VALUES
(N'Iphone X', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'iPhone XR', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'iPhone XS', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'Iphone XS Max', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'Iphone 2019', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'Iphone 8,8+', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'Iphone 8,8+ Red', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'Iphone 7,7+', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'Iphone 6,6+', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'Iphone 6s,6s+', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'Iphone 5s,5se', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'Iphone 12 Pro Max', CAST(N'2021-07-27' AS DateTime), N'Admin', 1),
(N'Hàng cũ', CAST(N'2021-07-27' AS DateTime), N'Admin', 1)
GO

INSERT INTO Producer (code, name)
VALUES ('apple', N'Apple')
GO

INSERT INTO dbo.Products (name, code, price, image, description, detail, quantity, createdDate, createdBy, categoryId, producerId) VALUES
(N'Apple iPhone XS Max 64GB 2 SIM', 'MD06', 20000000, '/CKFinderJava/userfiles/images/apple_iphone_xs_max_64gb_12.jpg', N'Apple iPhone XS Max 64GB 2 SIM',
N'<p dir="ltr">V&agrave;o ng&agrave;y 12/9/2018 tại sự kiện ra mắt sản phẩm mới Apple vừa cho ra bản n&acirc;ng cấp của d&ograve;ng iPhone X, Apple&nbsp;<a href="https://cellphones.com.vn/mobile/apple/iphone-xs-max.html" target="_blank" title="iPhone XS Max">iPhone XS Max</a>&nbsp;64GB 2 SIM. Đ&acirc;y l&agrave; phi&ecirc;n bản được thiết kế d&agrave;nh ri&ecirc;ng cho thị trường Trung Quốc với khả năng hoạt động c&ugrave;ng l&uacute;c 2 SIM. C&ugrave;ng với c&aacute;c n&acirc;ng cấp đ&aacute;ng gi&aacute; đ&acirc;y xứng đ&aacute;ng l&agrave; chiếc iPhone mang lại nhiều trải nghiệm mới mẻ cũng như cảm gi&aacute;c h&agrave;i l&ograve;ng cho người d&ugrave;ng.</p>

<h3 dir="ltr">Thiết kế đẳng cấp, 2 SIM tr&ecirc;n Apple iPhone XS Max 64GB 2 SIM</h3>

<p><img alt="Apple iPhone XS Max 64GB 2 SIM" src="https://cellphones.com.vn/media/wysiwyg/mobile/apple/apple-iphone-xs-max-64gb-2-sim-1.jpg" /></p>

<p dir="ltr">Sản phẩm Apple iPhone XS Max 64GB 2 SIM kh&ocirc;ng c&oacute; qu&aacute; nhiều thay đổi về thiết kế so với chiếc iPhone X. Apple đ&atilde; trang bị m&agrave;u Gold mới cho sản phẩm. Tổng k&iacute;ch thước của m&aacute;y l&agrave; 157.5 x 77.4 x 7.7mm v&agrave; trọng lượng 208g.</p>

<p dir="ltr">Đ&acirc;y l&agrave; phi&ecirc;n bản được Apple trang bị khe để 2 SIM nano thực sự tr&ecirc;n một khay SIM.</p>

<h3 dir="ltr">M&agrave;n h&igrave;nh OLED sắc n&eacute;t k&iacute;ch thước 6.5 inch tr&ecirc;n Apple iPhone XS Max 64GB 2 SIM</h3>

<p><img alt="Apple iPhone XS Max 64GB 2 SIM" src="https://cellphones.com.vn/media/wysiwyg/mobile/apple/apple-iphone-xs-max-64gb-2-sim-2.jpg" /></p>

<p dir="ltr">Apple iPhone XS Max 64GB 2 SIM được trang bị m&agrave;n h&igrave;nh k&iacute;ch thước 6.5 inch v&agrave; d&ugrave;ng c&ocirc;ng nghệ tấm nền OLED ch&iacute;nh. Sản phẩm c&oacute; mật độ điểm ảnh đạt 458 ppi. M&agrave;n h&igrave;nh của m&aacute;y c&oacute; độ ph&acirc;n giải 2688 x 1242 pixel với 3,3 triệu điểm ảnh. C&aacute;c trải nghiệm xem phim, chơi game, xem ảnh giờ đ&acirc;y sẽ v&ocirc; c&ugrave;ng th&uacute; vị v&agrave; thoải m&aacute;i tr&ecirc;n chiếc m&agrave;n h&igrave;nh n&agrave;y.</p>

<h3 dir="ltr">Chip A12 Bionic mang hiệu năng &ldquo;khủng&rdquo; tr&ecirc;n Apple iPhone XS Max 64GB 2 SIM</h3>

<p><img alt="Apple iPhone XS Max 64GB 2 SIM" src="https://cellphones.com.vn/media/wysiwyg/mobile/apple/apple-iphone-xs-max-64gb-2-sim-3.jpg" /></p>

<p dir="ltr">Con chip A12 Bionic mới được Apple trang bị cho chiếc iPhone mới n&agrave;y sản xuất tr&ecirc;n tiến tr&igrave;nh 7nm với 6,9 tỷ b&oacute;ng b&aacute;n dẫn v&agrave; c&oacute; khả năng thực hiện 5 ng&agrave;n tỷ ph&eacute;p t&iacute;nh mỗi gi&acirc;y. Con chip n&agrave;y bao gồm 6 nh&acirc;n CPU xử l&yacute; v&agrave; 4 nh&acirc;n GPU đồ họa. Nhờ v&agrave;o sự tối ưu phần mềm v&agrave; phần cứng của Apple m&agrave; Apple iPhone XS Max 64GB 2 SIM sẽ tăng hiệu năng hơn 15% v&agrave; độ họa 50% so với con chip A11 cũ.</p>

<h3 dir="ltr">Camera sắc n&eacute;t, đỉnh cao nhiếp ảnh tr&ecirc;n Apple iPhone XS Max 64GB 2 SIM</h3>

<p><img alt="Apple iPhone XS Max 64GB 2 SIM" src="https://cellphones.com.vn/media/wysiwyg/mobile/apple/apple-iphone-xs-max-64gb-2-sim-5.jpg" /></p>

<p dir="ltr">Camera tr&ecirc;n Apple iPhone XS Max 64GB 2 SIM vẫn giữ nguy&ecirc;n độ ph&acirc;n giải 12MP c&ugrave;ng t&iacute;nh năng chống rung quang học OIS cho cụm camera k&eacute;p n&agrave;y. Apple đ&atilde; n&acirc;ng cấp khả năng bắt n&eacute;t vật thể nhanh hơn khi chụp ảnh v&agrave; t&iacute;nh năng chỉnh sửa giả lập khẩu độ x&oacute;a ph&ocirc;ng, gi&uacute;p người d&ugrave;ng c&oacute; được những tấm ảnh nghệ thuật.</p>

<p dir="ltr">Camera trước của m&aacute;y c&oacute; độ ph&acirc;n giải 7MP c&ugrave;ng khẩu độ f/2.2. Apple đ&atilde; cho ph&eacute;p người d&ugrave;ng c&oacute; thể quay được video Full HD@60fps tr&ecirc;n camera True Depth.</p>

<h3 dir="ltr">Khả năng chống nước đạt chuẩn IP68 tr&ecirc;n Apple iPhone XS Max 64GB 2 SIM</h3>

<p dir="ltr">Chuẩn chống nước tr&ecirc;n Apple iPhone XS Max 64GB 2 SIM đ&atilde; được n&acirc;ng cấp l&ecirc;n IP68. Với chuẩn n&agrave;y iPhone của bạn sẽ được bảo vệ an to&agrave;n khi bị rơi xuống nước ở độ s&acirc;u 2 m trong 30 ph&uacute;t. Ngo&agrave;i ra c&aacute;c t&aacute;c hại chất lỏng như bia, tr&agrave;, caf&eacute;&hellip; cũng kh&ocirc;ng l&agrave;m ảnh hưởng hư hỏng đến Apple iPhone XS Max 64GB 2 SIM.</p>

<p><img alt="Apple iPhone XS Max 64GB 2 SIM" src="https://cellphones.com.vn/media/wysiwyg/mobile/apple/apple-iphone-xs-max-64gb-2-sim-4.jpg" /></p>

<p dir="ltr">Mua&nbsp;<a href="https://cellphones.com.vn/apple-iphone-xs-max-64-gb-2-sim.html" target="_self" title="Apple iPhone XS Max 64GB 2 SIM">Apple iPhone XS Max 64GB 2 SIM</a>&nbsp;gi&aacute; rẻ c&ugrave;ng chế độ bảo h&agrave;nh tốt ở đ&acirc;u? H&atilde;y đến với CellphoneS, hệ thống b&aacute;n lẻ điện thoại tr&ecirc;n to&agrave;n quốc hiện sẽ cung cấp cho kh&aacute;ch h&agrave;ng sản phẩm&nbsp;Apple iPhone XS Max 64GB 2 SIM&nbsp;trong thời gian sớm nhất khi được nh&agrave; sản xuất ra mắt c&ugrave;ng với việc b&aacute;n mức gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn, chế độ hậu m&atilde;i v&ocirc; c&ugrave;ng tốt. Đối với c&aacute;c kh&aacute;ch h&agrave;ng ở xa c&oacute; nhu cầu mua sản phẩm c&oacute; thể tham khảo qua dịch vụ mua h&agrave;ng v&agrave; thanh to&aacute;n tận nơi miễn ph&iacute; của CellphoneS. Ngo&agrave;i ra, đối với sản phẩm chưa ra mắt, kh&aacute;ch h&agrave;ng c&oacute; thể&nbsp;đặt cọc online&nbsp;để nhận m&aacute;y sớm nhất.</p>', 0,
CAST(N'2021-07-31' AS DATETIME), 'Admin', 4, 1)
INSERT INTO dbo.Products (name, code, price, image, description, detail, quantity, createdDate, createdBy, categoryId, producerId) VALUES
(N'IPhone 12 Pro Max 128GB', 'MD01', 29990000, '/CKFinderJava/userfiles/images/iphone-12-pro-12-pro-max-4.jpg', N'iPhone 12 Pro Max 128GB',
N'<p><strong>&ldquo;Tr&ugrave;m cuối&rdquo; của d&ograve;ng iPhone 12 đ&atilde; xuất hiện.&nbsp;<a href="https://fptshop.com.vn/dien-thoai/iphone-12-pro-max">iPhone 12 Pro Max</a>&nbsp;l&agrave; chiếc&nbsp;<a href="https://fptshop.com.vn/dien-thoai/apple-iphone">iPhone</a>&nbsp;c&oacute; m&agrave;n h&igrave;nh lớn nhất từ trước đến nay, mang tr&ecirc;n m&igrave;nh bộ vi xử l&yacute; mạnh nhất, camera&nbsp;</strong><strong>đẳng cấp pro c&ugrave;ng kết nối 5G si&ecirc;u tốc, cho bạn những trải nghiệm tuyệt vời chưa từng c&oacute;.</strong></p>

<p><strong><img alt="" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-max-3.JPG" style="height:360px; width:640px" /></strong></p>

<h3><strong>Chiếc iPhone m&agrave;n h&igrave;nh lớn nhất</strong></h3>

<p>iPhone 12 Pro Max sở hữu m&agrave;n h&igrave;nh k&iacute;ch thước kh&oacute; tin, l&ecirc;n tới 6,7 inch, cho bạn trải nghiệm h&igrave;nh ảnh cực đ&atilde;. Chất lượng đến từ một m&agrave;n h&igrave;nh c&ocirc;ng nghệ Super Retina XDR, tấm nền OLED cao cấp v&agrave; độ ph&acirc;n giải si&ecirc;u cao thực sự qu&aacute; tuyệt vời.</p>

<p>Mọi thứ đều trở n&ecirc;n sống động tr&ecirc;n&nbsp;<strong>iPhone 12 Pro Max</strong>, đặc biệt khi bạn xem ảnh, xem phim hay chơi game. C&ograve;n bất ngờ hơn khi d&ugrave; m&agrave;n h&igrave;nh lớn hơn, nhưng iPhone 12 Pro Max vẫn gọn g&agrave;ng như thế hệ trước nhờ viền m&agrave;n h&igrave;nh được tối ưu si&ecirc;u mỏng đầy tinh tế.</p>

<p><img alt="màn hình iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-max-2.JPG" style="height:360px; width:640px" title="" /></p>

<h3><strong>M&agrave;n h&igrave;nh si&ecirc;u bền, giảm nguy cơ trầy xước rơi vỡ</strong></h3>

<p>Kh&ocirc;ng chỉ c&oacute; một m&agrave;n h&igrave;nh đẹp xuất sắc, m&agrave;n h&igrave;nh iPhone 12 Pro Max&nbsp;c&ograve;n được bảo vệ bởi c&ocirc;ng nghệ phủ gốm Ceramic Shield. C&ocirc;ng nghệ n&agrave;y sử dụng c&aacute;c tinh thể gốm nano cứng hơn cả kim loại để tấm k&iacute;nh c&oacute; khả năng chống xước cao hơn v&agrave; bền hơn tới 4 lần nếu chẳng may điện thoại bị rơi. Đ&acirc;y cũng l&agrave; lớp k&iacute;nh m&agrave;n h&igrave;nh cứng nhất thế giới smartphone hiện nay, cho bạn cảm gi&aacute;c y&ecirc;n t&acirc;m khi sử dụng.</p>

<p><img alt="thiết kế iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-max-1.JPG" style="height:360px; width:640px" title="" /></p>

<h3><strong>Chế t&aacute;c từ th&eacute;p kh&ocirc;ng gỉ cao cấp</strong></h3>

<p>Được l&agrave;m từ những vật liệu cao cấp h&agrave;ng đầu v&agrave; khả năng ho&agrave;n thiện tinh xảo, iPhone 12 Pro Max khiến tất cả đều phải ngước nh&igrave;n. Ấn tượng nhất chắc chắn l&agrave; phần khung viền l&agrave;m từ th&eacute;p kh&ocirc;ng gỉ, được l&agrave;m phẳng hiện đại v&agrave; c&aacute;c đường cắt kim cương s&aacute;ng b&oacute;ng sang trọng.</p>

<p>Phần viền m&agrave;n h&igrave;nh v&agrave; th&acirc;n m&aacute;y đều được l&agrave;m si&ecirc;u mỏng, tạo n&ecirc;n sự thanh lịch. Ngo&agrave;i ra bạn c&ograve;n c&oacute; tới 4 m&agrave;u sắc để lựa chọn l&agrave; Bạc, X&aacute;m than ch&igrave;, V&agrave;ng v&agrave; Xanh đại dương, tất cả đều rất đẳng cấp. B&ecirc;n cạnh đ&oacute;,&nbsp;iPhone 12 Pro Max sẽ c&oacute; 3 phi&ecirc;n bản dung lượng với c&aacute;c t&ugrave;y chọn m&agrave;u sắc kể tr&ecirc;n&nbsp;cho người d&ugrave;ng lựa chọn gồm:&nbsp;<strong>iPhone 12 Pro Max&nbsp;128GB</strong>,&nbsp;<strong>iPhone 12 Pro Max&nbsp;256GB</strong>&nbsp;v&agrave;&nbsp;<strong>iPhone 12 Pro Max&nbsp;512GB</strong>.</p>

<p><img alt="thép không gỉ iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-max-4.JPG" style="height:360px; width:640px" title="" /></p>

<h3><strong>Khả năng chống nước ho&agrave;n hảo</strong></h3>

<p>iPhone 12 Pro Max c&oacute; thể ng&acirc;m nước ở độ s&acirc;u tối đa l&ecirc;n tới 6m trong khoảng thời gian 30 ph&uacute;t. Trang bị chuẩn chống nước IP68 tốt nhất thế giới smartphone hiện nay, iPhone 12 Pro Max ho&agrave;n to&agrave;n kh&ocirc;ng bị nguy hại khi đối mặt với những nguy cơ từ nước trong cuộc sống h&agrave;ng ng&agrave;y.</p>

<p><img alt="chống nước iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-8.JPG" style="height:360px; width:640px" title="" /></p>

<h3><strong>Tốc độ nhanh kh&ocirc;ng tưởng với mạng 5G</strong></h3>

<p>iPhone 12 Pro Max trang bị băng tần 5G si&ecirc;u nhanh, gi&uacute;p trải nghiệm Internet của bạn l&ecirc;n một tầm cao mới. Bất cứ điều g&igrave; bạn l&agrave;m tr&ecirc;n mạng Internet đều diễn ra nhanh ch&oacute;ng. Xem phim trực tuyến chất lượng cao, livestream, chơi game online, tải t&agrave;i liệu, tất cả đều được xử l&yacute; trong chớp mắt với kết nối 5G.</p>

<p><img alt="mạng 5G iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-max-6.JPG" style="height:360px; width:640px" title="" /></p>

<h3><strong>Chiếc điện thoại mạnh mẽ nhất thế giới</strong></h3>

<p><a href="https://fptshop.com.vn/tin-tuc/danh-gia/tat-tan-tat-ve-chip-apple-a14-trai-tim-se-lam-nen-suc-manh-cho-iphone-12-121314" title="Apple A14 Bionic" type="Apple A14 Bionic">Apple A14 Bionic</a>, bộ vi xử l&yacute; điện thoại mạnh nhất thế giới đ&atilde; c&oacute; mặt tr&ecirc;n iPhone 12 Pro Max. Đ&acirc;y l&agrave; con chip đầu ti&ecirc;n được sản xuất tr&ecirc;n tiến tr&igrave;nh 5nm, c&oacute; số lượng b&oacute;ng b&aacute;n dẫn nhiều hơn tới 40% so với thế hệ trước, kh&ocirc;ng chỉ mang đến hiệu năng cực đỉnh m&agrave; c&ograve;n c&oacute; thời lượng pin tuyệt vời.</p>

<p>B&ecirc;n cạnh đ&oacute;, Apple A14 Bionic c&ograve;n t&iacute;ch hợp chip xử l&yacute; h&igrave;nh ảnh ISP mới, n&acirc;ng cao khả năng chụp ảnh v&agrave; quay video. Số nh&acirc;n Neural Engine cũng được tăng gấp đ&ocirc;i, từ 8 l&ecirc;n 16 để việc vận dụng AI c&oacute; hiệu suất cao hơn bao giờ hết.</p>

<p><img alt="cấu hình iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-7.JPG" style="height:360px; width:640px" title="" /></p>

<h3><strong>M&aacute;y qu&eacute;t LiDAR chuy&ecirc;n nghiệp</strong></h3>

<p>NASA đang sử dụng c&ocirc;ng nghệ LiDAR cho lần tiếp theo đặt ch&acirc;n l&ecirc;n sao Hỏa. Bạn c&oacute; thể trải nghiệm c&ocirc;ng nghệ ti&ecirc;n tiến n&agrave;y qua m&aacute;y qu&eacute;t LiDAR ngay tr&ecirc;n ch&iacute;nh iPhone 12 Pro Max.</p>

<p>LiDAR c&oacute; khả năng dựng lại vật thể bằng c&aacute;ch đo thời gian &aacute;nh s&aacute;ng phản xạ đến vật thể, với độ ch&iacute;nh x&aacute;c tới từng nano gi&acirc;y. LiDAR sẽ qu&eacute;t c&aacute;c bề mặt trong kh&ocirc;ng gian để ph&acirc;n t&iacute;ch v&agrave; tạo cảnh dựa tr&ecirc;n ứng dụng AR. Đ&acirc;y l&agrave; ng&agrave;nh c&ocirc;ng nghệ c&oacute; t&iacute;nh ứng dụng rất cao trong tương lai gần.</p>

<p><img alt="LiDAR iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-6.JPG" style="height:360px; width:640px" title="" /></p>

<h3><strong>Zoom quang học 2,5x, chụp sắc n&eacute;t ở cự ly xa</strong></h3>

<p>Với ống k&iacute;nh Tele mới ti&ecirc;u cự 65mm, iPhone 12 Pro Max c&oacute; khả năng zoom quang học 2,5x, ph&oacute;ng to h&igrave;nh ảnh tới 2,5 lần m&agrave; chất lượng kh&ocirc;ng hề thay đổi. Nghĩa l&agrave; bạn c&oacute; thể chụp những vật thể ở khoảng c&aacute;ch xa với khả năng thu ph&oacute;ng v&agrave; độ n&eacute;t đ&aacute;ng kinh ngạc.</p>

<p><img alt="zoom quang iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-14(1).JPG" style="height:360px; width:640px" title="" /></p>

<h3><strong>T&iacute;nh năng chống rung quang học mới</strong></h3>

<p>Camera ch&iacute;nh tr&ecirc;n&nbsp;<em>iPhone 12 Pro Max</em>&nbsp;l&agrave; camera smartphone đầu ti&ecirc;n c&oacute; t&iacute;nh năng chống rung quang học thay đổi cảm biến (sensor-shift OIS). T&iacute;nh năng n&agrave;y mang tới hiệu quả chống rung gấp 5 lần so với OIS th&ocirc;ng thường.</p>

<p>Kết hợp th&ecirc;m khẩu độ lớn f/1.6 v&agrave; k&iacute;ch thước điểm ảnh l&ecirc;n tới 1,7um, camera iPhone 12 Pro Max đ&iacute;ch thực l&agrave; một ngọn hải đăng trong đ&ecirc;m. C&aacute;c bức ảnh chụp đ&ecirc;m sẽ s&aacute;ng r&otilde;, sắc n&eacute;t v&agrave; m&agrave;u sắc v&ocirc; c&ugrave;ng ch&iacute;nh x&aacute;c. Tha hồ để bạn tự do s&aacute;ng tạo, ghi lại những khoảnh khắc đ&aacute;ng nhớ trong đ&ecirc;m tối.</p>

<p><img alt="OIS iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-19.JPG" style="height:360px; width:640px" title="" /></p>

<h3><strong>Dựng phim chuy&ecirc;n nghiệp, quay video 4K HDR Dolby Vision</strong></h3>

<p>Đến với thế giới m&agrave;u sắc bằng những đoạn phim 4K HDR Dolby Vision ch&acirc;n thực một c&aacute;ch đ&aacute;ng kinh ngạc tr&ecirc;n iPhone 12 Pro Max. Những video giờ đ&acirc;y sẽ c&oacute; m&agrave;u sắc sống động chưa từng thấy với 700 triệu m&agrave;u, gấp 60 lần so với video ti&ecirc;u chuẩn.</p>

<p>Bạn sẽ thấy r&otilde; sự kh&aacute;c biệt khi thưởng thức video Dolby Vision tr&ecirc;n TV 4K HDR. iPhone 12 Pro Max l&agrave; chiếc điện thoại đầu ti&ecirc;n c&oacute; thể quay video Dolby Vision, thậm ch&iacute; bạn c&ograve;n c&oacute; những c&ocirc;ng cụ để chỉnh sửa, bi&ecirc;n tập video trước khi xuất bản. Tất cả c&aacute;c c&ocirc;ng việc của một studio chuy&ecirc;n nghiệp g&oacute;i gọn trong chiếc điện thoại đầy quyền lực tr&ecirc;n tay.</p>

<p><img alt="4K HDR iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-15.JPG" style="height:360px; width:640px" title="" /></p>

<h3><strong>Chụp ảnh v&agrave; quay video thiếu s&aacute;ng ho&agrave;n hảo</strong></h3>

<p>Nếu như ở những chiếc&nbsp;<a href="https://fptshop.com.vn/dien-thoai">điện thoại</a>&nbsp;kh&aacute;c, thiếu s&aacute;ng lu&ocirc;n l&agrave; một điều kiện kh&oacute; khăn cho camera, th&igrave; với iPhone 12 Pro Max, m&agrave;n đ&ecirc;m chỉ khiến cho những bức ảnh v&agrave; video của bạn lung linh hơn. Bạn c&oacute; thể chụp ảnh r&otilde; n&eacute;t, chụp ch&acirc;n dung đ&ecirc;m v&agrave; quay video với độ s&aacute;ng tốt hơn tới 87%.</p>

<p>Ngay cả những v&ugrave;ng tối cũng c&oacute; độ chi tiết rất cao tr&ecirc;n&nbsp;<strong>iPhone 12 Pro Max</strong>. Cảm biến camera h&agrave;ng đầu, chip xử l&yacute; h&igrave;nh ảnh ISP mới tr&ecirc;n Apple A14 Bionic, m&aacute;y qu&eacute;t LiDAR tạo n&ecirc;n sự kết hợp ho&agrave;n hảo khi chụp ảnh, quay video v&agrave;o ban đ&ecirc;m.</p>

<p><img alt="chụp thiếu sáng iPhone 12 Pro Max" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-12-pro-13.JPG" style="height:360px; width:640px" title="" /></p>',
5, CAST(N'2021-07-31' AS DATETIME), 'Admin', 12, 1)
INSERT INTO dbo.Products (name, code, price, image, description, detail, quantity, createdDate, createdBy, categoryId, producerId) VALUES
(N'IPhone 11 Pro 512GB', 'MD02', 34790000, '/CKFinderJava/userfiles/images/iphone%2011%20pro%20%20(5).jpg', N'IPhone 11 Pro 512GB',
N'<p><strong>Phi&ecirc;n bản bộ nhớ lớn nhất<a href="https://fptshop.com.vn/dien-thoai/iphone-11-pro-512gb">&nbsp;iPhone 11 Pro 512GB</a>&nbsp;cho bạn kh&ocirc;ng gian lưu trữ thoải m&aacute;i, tha hồ chụp ảnh v&agrave; quay video bằng hệ thống 3 camera sau si&ecirc;u đỉnh, thời lượng pin d&agrave;i v&ocirc; tận c&ugrave;ng sức mạnh khổng lồ từ bộ vi xử l&yacute; Apple A13 Bionic.</strong></p>

<p><strong><img alt="" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-14.jpg" style="height:360px; width:640px" /></strong></p>

<h3><strong>Sức mạnh đẳng cấp Pro</strong></h3>

<p>Bộ vi xử l&yacute;<a href="https://fptshop.com.vn/tin-tuc/danh-gia/con-chip-apple-a13-bionic-tren-iphone-11-manh-co-nao-101678">&nbsp;A13 Bionic</a>&nbsp;tr&ecirc;n iPhone 11 Pro 512GB mang đến hiệu năng ở một đẳng cấp kh&aacute;c so với c&aacute;c&nbsp;<a href="https://fptshop.com.vn/dien-thoai">smartphone</a>&nbsp;hiện nay. Con chip si&ecirc;u mạnh mẽ cả về CPU v&agrave; GPU c&ograve;n được hỗ trợ bởi tr&iacute; tuệ nh&acirc;n tạo, tự động học hỏi để mang đến trải nghiệm mượt m&agrave; hiếm c&oacute;. Mọi t&aacute;c vụ d&ugrave; phức tạp đến mấy cũng đều được xử l&yacute; nhanh ch&oacute;ng, tất cả c&aacute;c tựa game nặng đều được thể hiện xuất sắc. Sức mạnh đ&aacute;ng kinh ngạc của iPhone 11 Pro khiến cho mọi việc đều trở n&ecirc;n dễ d&agrave;ng.</p>

<p><img alt="iPhone Pro hiệu năng" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-10.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Thời lượng pin kh&oacute; tin</strong></h3>

<p>Bạn sẽ bất ngờ về thời lượng pin của iPhone 11 Pro. Chiếc<a href="https://fptshop.com.vn/dien-thoai/apple-iphone">&nbsp;iPhone</a>&nbsp;mới c&oacute; thời gian sử dụng l&acirc;u hơn&nbsp;<a href="https://fptshop.com.vn/dien-thoai/iphone-xs-64gb">iPhone Xs</a>&nbsp;trước đ&acirc;y tới 4 giờ đồng hồ. Đ&acirc;y l&agrave; kết quả của cả hệ thống vận h&agrave;nh, bao gồm pin, chip, m&agrave;n h&igrave;nh, phần mềm được cải tiến. Tr&ecirc;n iPhone 11 Pro bạn c&oacute; thể sử dụng thoải m&aacute;i kh&ocirc;ng lo hết pin, đồng thời sạc cực nhanh bằng củ sạc 18W đi k&egrave;m. Chỉ cần 30 ph&uacute;t sạc cho cả ng&agrave;y d&agrave;i năng động, lu&ocirc;n lu&ocirc;n sẵn s&agrave;ng v&agrave; kh&ocirc;ng phải chờ đợi với iPhone 11 Pro.</p>

<p><img alt="iPhone Pro pin" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-11.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Thiết kế mặt lưng nh&aacute;m cao cấp</strong></h3>

<p>Vẫn được ho&agrave;n thiện từ khung th&eacute;p kh&ocirc;ng gỉ cao cấp v&agrave; hai mặt k&iacute;nh cường lực b&oacute;ng bẩy, nhưng giờ đ&acirc;y lớp sơn nh&aacute;m ở mặt lưng mang đến diện mạo ho&agrave;n to&agrave;n mới cho iPhone 11 Pro. Mặt lưng sẽ lu&ocirc;n s&aacute;ng đẹp, mịn m&agrave;ng m&agrave; kh&ocirc;ng bị b&aacute;m bẩn, mồ h&ocirc;i hay dấu v&acirc;n tay. Chiếc iPhone nhỏ gọn, cho cảm gi&aacute;c cầm nắm ho&agrave;n hảo nhưng vẫn c&oacute; m&agrave;n h&igrave;nh đủ lớn để trải nghiệm tốt mọi thứ. Bạn sẽ c&oacute; 4 lựa chọn m&agrave;u sắc sang trọng, bao gồm V&agrave;ng, X&aacute;m kh&ocirc;ng gian, Bạc v&agrave; m&agrave;u mới Xanh Midnigh đặc biệt.</p>

<p><strong><img alt="iPhone Pro" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-1.jpg" style="height:360px; width:640px" /></strong></p>

<h3><strong>Chất liệu si&ecirc;u cứng, ho&agrave;n thiện chắc chắn, chống nước chuẩn IP68</strong></h3>

<p>Những chất liệu tạo n&ecirc;n iPhone 11 Pro bao gồm th&eacute;p kh&ocirc;ng gỉ v&agrave; k&iacute;nh cường lực cứng nhất thế giới smartphone. Ch&iacute;nh v&igrave; vậy iPhone 11 Pro v&ocirc; c&ugrave;ng chắc chắn, sẵn s&agrave;ng đương đầu mọi thử th&aacute;ch. Khả năng&nbsp;<a href="https://fptshop.com.vn/tin-tuc/danh-gia/chuan-ip68-la-gi-khac-biet-gi-so-voi-ip67-57823">chống nước chuẩn IP68</a>&nbsp;cho ph&eacute;p bạn ng&acirc;m nước dưới độ s&acirc;u 4m trong thời gian l&ecirc;n tới 30 ph&uacute;t, đồng nghĩa với việc iPhone 11 miễn nhiễm với hầu hết nguy cơ từ chất lỏng.</p>

<p><img alt="iPhone Pro thiết kế" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-12.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Hiển thị Pro với m&agrave;n h&igrave;nh Super Retina XDR</strong></h3>

<p>iPhone 11 Pro sở hữu m&agrave;n h&igrave;nh 5,8 inch<a href="https://fptshop.com.vn/tin-tuc/tin-moi-1/super-retina-xdr-la-gi-cong-nghe-man-hinh-moi-tren-iphone-11-101690">&nbsp;Super Retina XDR</a>&nbsp;cực chất. M&agrave;n h&igrave;nh&nbsp;<a href="https://fptshop.com.vn/tin-tuc/danh-gia/man-hinh-oled-la-gi-cong-nghe-man-hinh-oled-uu-va-nhuoc-diem-57402">c&ocirc;ng nghệ OLED&nbsp;</a>mới cho m&agrave;u sắc ch&acirc;n thực, g&oacute;c nh&igrave;n ho&agrave;n hảo v&agrave; độ s&aacute;ng đ&aacute;ng kinh ngạc. Độ s&aacute;ng m&agrave;n h&igrave;nh iPhone 11 Pro đạt tới 800 nits khi hiển thị ngo&agrave;i trời v&agrave; thậm ch&iacute; đạt con số 1200 nits khi xem những nội dung c&oacute; dải nhạy s&aacute;ng rộng. Ngo&agrave;i việc hiển thị xuất sắc, m&agrave;n h&igrave;nh n&agrave;y c&ograve;n tiết kiệm điện hơn 15%, g&oacute;p phần n&acirc;ng cao thời lượng pin của iPhone 11 Pro.</p>

<p><img alt="" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-11-pro-15.jpg" style="height:360px; width:640px" /></p>

<h3><strong>3 camera sau chuy&ecirc;n nghiệp</strong></h3>

<p>iPhone 11 Pro l&agrave; chiếc iPhone đầu ti&ecirc;n trang bị hệ thống 3 camera sau chuy&ecirc;n nghiệp. Chụp cảnh rộng gấp 4 lần; h&igrave;nh ảnh tuyệt đẹp trong điều kiện &aacute;nh s&aacute;ng yếu; quay video chất lượng cao nhất thế giới smartphone v&agrave; tr&ecirc;n hết khả năng chỉnh sửa với những c&ocirc;ng cụ chuy&ecirc;n nghiệp ngay tr&ecirc;n chiếc điện thoại của bạn. iPhone 11 Pro kh&ocirc;ng chỉ l&agrave; m&aacute;y ảnh v&agrave; m&aacute;y quay video ho&agrave;n hảo, đ&acirc;y c&ograve;n l&agrave; phương tiện để bạn hậu kỳ, chỉnh sửa v&agrave; xuất bản.</p>

<p><img alt="camera iPhone Pro" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-2.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Chụp gần, chụp g&oacute;c rộng v&agrave; g&oacute;c si&ecirc;u rộng</strong></h3>

<p>Chỉ tr&ecirc;n một chiếc điện thoại, bạn c&oacute; thể chụp gần với camera tele, chụp th&ocirc;ng thường với camera g&oacute;c rộng v&agrave; chụp những bức ảnh ho&agrave;nh tr&aacute;ng với camera g&oacute;c si&ecirc;u rộng. iPhone 11 Pro c&oacute; khả năng zoom quang 4x v&agrave; thu được khung cảnh lớn gấp 4 lần đầy ấn tượng. Sẽ c&oacute; những l&uacute;c bạn muốn lưu giữ những cảnh đẹp ở nơi m&igrave;nh đ&atilde; đi, iPhone 11 Pro sẽ gi&uacute;p bạn bằng c&aacute;c bức ảnh sống động nhất với camera g&oacute;c si&ecirc;u rộng.</p>

<p><img alt="góc siêu rộng iPhone Pro" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-3.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Chế độ chụp đ&ecirc;m mới Night Mode, giải ph&aacute;p ho&agrave;n hảo cho chụp ảnh thiếu s&aacute;ng</strong></h3>

<p>Những &aacute;nh đ&egrave;n trong đ&ecirc;m lu&ocirc;n mang đến rất nhiều cảm hứng nhưng lại thật kh&oacute; để chụp lại bằng camera. iPhone 11 Pro dễ d&agrave;ng ghi lại những khoảnh khắc của bạn trong điều kiện thiếu s&aacute;ng nhờ chế độ chụp đ&ecirc;m Night Mode. Sự kết hợp giữa cảm biến camera mới, phần mềm th&ocirc;ng minh v&agrave; khả năng xử l&yacute; tuyệt vời của con chip A13 Bionic mang lại những bức ảnh thiếu s&aacute;ng chưa từng c&oacute; tr&ecirc;n iPhone. Chế độ Night Mode c&ograve;n hoạt động rất th&ocirc;ng minh khi tự động nhận diện điều kiện thiếu s&aacute;ng để k&iacute;ch hoạt, cho bức ảnh ch&acirc;n thực nhất.</p>

<p><img alt="iPhone Pro thiếu sáng" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-4.jpg" style="height:360px; width:640px" /></p>

<h3><strong>N&acirc;ng tầm ảnh chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng</strong></h3>

<p>Việc sử dụng tới 3 camera gi&uacute;p khả năng chụp ảnh ch&acirc;n dung của iPhone 11 Pro trở n&ecirc;n chuy&ecirc;n nghiệp hơn bao giờ hết. Bạn sẽ c&oacute; th&ecirc;m những hiệu ứng &aacute;nh s&aacute;ng đơn sắc chuẩn studio.&nbsp;<a href="https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-ve-cong-nghe-chup-xoa-phong-la-gi-63770">Chế độ x&oacute;a ph&ocirc;ng</a>&nbsp;mới cũng cho ph&eacute;p bạn điều chỉnh cường độ &aacute;nh s&aacute;ng, nhờ vậy chủ thể sẽ xuất hiện đẹp lung linh, đậm phong c&aacute;ch v&agrave; c&aacute; t&iacute;nh kh&aacute;c biệt. B&ecirc;n cạnh đ&oacute;, x&oacute;a ph&ocirc;ng tr&ecirc;n iPhone 11 Pro c&ograve;n th&ocirc;ng minh hơn khi x&oacute;a ph&ocirc;ng được cả đối tượng l&agrave; vật thể, hoặc x&oacute;a ph&ocirc;ng 2 người trong c&ugrave;ng một khung h&igrave;nh.</p>

<p><img alt="iPhone Pro xóa phông" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-5.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Smart HDR, giải ph&aacute;p cho những bức ảnh ch&acirc;n thực v&agrave; sống động</strong></h3>

<p>Smart HDR sẽ gi&uacute;p cho những bức ảnh của bạn kh&ocirc;ng chỉ đẹp m&agrave; c&ograve;n hết sức ch&acirc;n thực v&agrave; sống động. C&aacute;c thuật to&aacute;n ti&ecirc;n tiến c&ugrave;ng khả năng tự học hỏi Machine Learning được &aacute;p dụng để l&agrave;m nổi bật &aacute;nh s&aacute;ng, hiệu ứng b&oacute;ng đổ v&agrave; từng chi tiết nhỏ trong bức ảnh. iPhone 11 Pro c&oacute; thể tinh chỉnh ri&ecirc;ng biệt chủ thể v&agrave; cảnh nền, t&iacute;nh năng vốn chỉ c&oacute; ở một số m&aacute;y ảnh DSLR cao cấp. Độ tương phản, m&agrave;u sắc, c&acirc;n bằng trắng trong ảnh trở n&ecirc;n ho&agrave;n hảo hơn bao giờ hết.</p>

<p><img alt="iPhone Pro smart hdr" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-6.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Quay video chất lượng, chỉnh sửa video dễ d&agrave;ng</strong></h3>

<p>iPhone 11 Pro xứng đ&aacute;ng l&agrave; chiếc điện thoại c&oacute; khả năng quay video h&agrave;ng đầu thế giới hiện nay. Bộ vi xử l&yacute; mạnh mẽ c&ugrave;ng cụm camera cao cấp gi&uacute;p iPhone 11 Pro c&oacute; thể quay video 4K 60fps si&ecirc;u n&eacute;t với dải nhạy s&aacute;ng cực rộng v&agrave; chống rung chuy&ecirc;n nghiệp. Thậm ch&iacute; với camera g&oacute;c rộng, bạn c&oacute; thể s&aacute;ng tạo hơn khi li&ecirc;n tục hay đổi g&oacute;c nh&igrave;n, tất cả đều diễn ra một c&aacute;ch trơn tru v&agrave; đẹp mắt. Hơn nữa, khi bạn zoom h&igrave;nh ảnh v&agrave;o người đang n&oacute;i chuyện th&igrave; &acirc;m lượng của giọng n&oacute;i cũng được tăng l&ecirc;n theo, giống như phim truyền h&igrave;nh vậy. Ngo&agrave;i ra, mọi thứ đều dễ d&agrave;ng chỉnh sửa v&agrave; hậu kỳ nhanh ch&oacute;ng dựa tr&ecirc;n c&ocirc;ng cụ phần mềm c&oacute; sẵn của iPhone 11 Pro.</p>

<p><img alt="iPhone Pro video" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-7.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Chụp ảnh selfie tuyệt đẹp bằng camera trước 12MP</strong></h3>

<p>Camera trước iPhone 11 Pro được n&acirc;ng cấp l&ecirc;n độ ph&acirc;n giải 12MP, mang đến những bức ảnh sắc n&eacute;t, chất lượng hơn. Apple c&ograve;n th&ecirc;m t&iacute;nh năng quay video chuyển động si&ecirc;u chậm ở 120 fps cho camera selfie. Những đoạn video chuyển động si&ecirc;u chậm quay bằng camera trước được gọi l&agrave; slofie, cho bạn lưu lại những khoảnh khắc theo c&aacute;ch ấn tượng. Camera n&agrave;y cũng c&oacute; g&oacute;c rộng hơn để kh&ocirc;ng ai bị bỏ qua trong khung h&igrave;nh. Tha hồ selfie v&agrave; slofie c&ugrave;ng bạn b&egrave; một c&aacute;ch vui vẻ tr&ecirc;n iPhone 11 Pro.</p>

<p><img alt="iPhone Pro camera selfie" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro-8.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Face ID thế hệ mới, nhanh ch&oacute;ng v&agrave; bảo mật</strong></h3>

<p>Face ID của iPhone 11 Pro nhanh hơn 30%, nhận diện được xa hơn, nhiều g&oacute;c độ hơn v&agrave; hiệu quả hơn. Đơn giản chỉ cần nhấc iPhone l&ecirc;n, m&aacute;y sẽ mở kh&oacute;a ngay lập tức một c&aacute;ch tự nhi&ecirc;n. Ngo&agrave;i ra, mọi dữ liệu tr&ecirc;n iPhone đều được bảo mật an to&agrave;n. Kể cả dữ liệu khu&ocirc;n mặt của bạn cũng kh&ocirc;ng hề được sao lưu ở iCloud hay bất cứ nơi n&agrave;o kh&aacute;c. Th&ocirc;ng tin bản đồ v&agrave; iMessage cũng được m&atilde; h&oacute;a để tr&aacute;nh bị hacker th&acirc;m nhập.</p>

<p><img alt="thiết kế iPhone Pro" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iPhone-11-Pro.jpg" style="height:360px; width:640px" /></p>',
2, CAST(N'2021-07-31' AS DATETIME), 'Admin', 11, 1)
INSERT INTO dbo.Products (name, code, price, image, description, detail, quantity, createdDate, createdBy, categoryId, producerId) VALUES
(N'IPhone XR 64GB', 'MD03', 11990000, '/CKFinderJava/userfiles/images/iphone_xr_black-back_09122018_carousel(1).jpg_large_5.jpg', N'IPhone XR 64GB',
N'<p>Chiếc&nbsp;<a href="https://fptshop.com.vn/dien-thoai/apple-iphone">iPhone</a>&nbsp;với&nbsp;<a href="https://fptshop.com.vn/tin-tuc/danh-gia/ti-m-hie-u-ve-cong-nghe-liquid-retina-tren-iphone-xr-73345">m&agrave;n h&igrave;nh Liquid Retina</a>&nbsp;ho&agrave;n to&agrave;n mới, c&ocirc;ng nghệ m&agrave;n h&igrave;nh LCD ti&ecirc;n tiến nhất đi c&ugrave;ng Face ID nhanh hơn, con chip mạnh mẽ v&agrave; hệ thống camera x&oacute;a ph&ocirc;ng ho&agrave;n hảo. Đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a href="https://fptshop.com.vn/dien-thoai/iphone-xr-64gb" target="_blank">iPhone XR&nbsp;</a>với nhiều m&agrave;u sắc tuyệt vời đang chờ đ&oacute;n bạn.</p>

<p><img alt="Điện thoại iPhone XR" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-16.jpg" style="height:360px; width:640px" /></p>

<h3><strong>M&agrave;n h&igrave;nh Liquid Retina cực lớn</strong></h3>

<p>iPhone XR sử dụng m&agrave;n h&igrave;nh LCD ti&ecirc;n tiến nhất hiện nay, hiển thị tuyệt đẹp với k&iacute;ch thước lớn 6,1 inch Liquid Retina sắc n&eacute;t, tr&agrave;n viền cạnh. Thiết kế tr&agrave;n viền gi&uacute;p cho d&ugrave; m&agrave;n h&igrave;nh lớn tới 6,1 inch nhưng iPhone XR vẫn nhỏ gọn hơn so với&nbsp;<a href="https://fptshop.com.vn/dien-thoai/iphone-8-plus-64gb">iPhone 8 Plus</a>, dễ d&agrave;ng cầm nắm thao t&aacute;c bằng một tay. C&ocirc;ng nghệ LCD cho m&agrave;u sắc ch&iacute;nh x&aacute;c, độ s&aacute;ng cao, t&aacute;i tạo cuộc sống v&ocirc; c&ugrave;ng ch&acirc;n thực. C&oacute; tới 6 tấm cảm biến đ&egrave;n nền dưới m&agrave;n h&igrave;nh, tự động điều chỉnh c&acirc;n bằng trắng th&ocirc;ng minh để thay đổi nhiệt độ m&agrave;u dựa theo m&ocirc;i trường, để bạn lu&ocirc;n được tận hưởng m&agrave;n h&igrave;nh đẹp v&agrave; dễ chịu cho mắt.</p>

<p><img alt="Màn hình Liquid Retina cực lớn | iPhone XR" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-4.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Chiếc iPhone đầy m&agrave;u sắc tuyệt đẹp</strong></h3>

<p>iPhone XR c&oacute; kiểu d&aacute;ng đẹp mắt khi được ho&agrave;n thiện từ nh&ocirc;m v&agrave; vỏ k&iacute;nh bền nhất trong thế giới&nbsp;<a href="https://fptshop.com.vn/dien-thoai">smartphone</a>. Sử dụng tới 7 tầm nền m&agrave;u sắc gi&uacute;p m&agrave;u sơn c&oacute; độ s&acirc;u đầy ấn tượng phản chiếu qua lớp k&iacute;nh sang trọng. Việc sử dụng vỏ k&iacute;nh cũng gi&uacute;p cho iPhone XR c&oacute; khả năng&nbsp;<a href="https://fptshop.com.vn/phu-kien/sac-cap?tinh-nang=sac-khong-day">sạc kh&ocirc;ng d&acirc;y</a>. Rất nhiều m&agrave;u sắc đang chờ bạn lựa chọn: Đỏ, v&agrave;ng, trắng, hồng, đen, xanh. Kh&ocirc;ng chỉ đẹp, iPhone XR c&ograve;n rất bền vững nhờ khả năng chống nước, mang tới sự y&ecirc;n t&acirc;m khi sử dụng.</p>

<p><img alt="Chiếc iPhone đầy màu sắc tuyệt đẹp | iPhone XR" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-17.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Nhận diện khu&ocirc;n mặt Face ID n&acirc;ng cao</strong></h3>

<p>Bảo mật tr&ecirc;n iPhone XR đơn giản v&agrave; an to&agrave;n hơn bao giờ hết khi mật khẩu ch&iacute;nh l&agrave; khu&ocirc;n mặt của bạn. Bạn c&oacute; thể mở kh&oacute;a iPhone, đăng nhập v&agrave;o ứng dụng hay thanh to&aacute;n chỉ trong nh&aacute;y mắt m&agrave; kh&ocirc;ng cần nhập mật khẩu. Đ&acirc;y l&agrave; phương thức bảo mật an to&agrave;n nhất tr&ecirc;n smartphone v&agrave; n&oacute; c&ograve;n nhanh hơn nữa tr&ecirc;n iPhone XR.</p>

<p><img alt="Nhận diện khuôn mặt Face ID nâng cao | iPhone XR" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-11.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Apple A12 Bionic, con chip th&ocirc;ng minh v&agrave; mạnh mẽ nhất</strong></h3>

<p>iPhone XR được trang bị con chip A12 Bionic c&oacute; 6 nh&acirc;n, trong đ&oacute; 2 nh&acirc;n hiệu năng cao nhanh hơn 15% v&agrave; 4 nh&acirc;n tiết kiệm điện tiết kiệm hơn 50% so với thế hệ trước A11 Bionic của&nbsp;<a href="https://fptshop.com.vn/dien-thoai/iphone-x">iPhone X</a>. Đồng thời GPU đồ họa của A12 Bionic mạnh hơn tới 50%, cho ph&eacute;p bạn chơi mọi tựa game ở cấu h&igrave;nh cao nhất một c&aacute;ch nhẹ nh&agrave;ng v&agrave; mượt m&agrave;.</p>

<p><img alt="Apple A12 Bionic, con chip thông minh và mạnh mẽ nhất | iPhone XR" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-12.jpg" style="height:360px; width:640px" /></p>

<p>Kh&ocirc;ng chỉ mạnh mẽ, điểm kh&aacute;c biệt của A12 Bionic c&ograve;n đến từ sự th&ocirc;ng minh của con chip n&agrave;y. Với 8 nh&acirc;n Neural Engine c&oacute; khả năng học hỏi theo thời gian thực, iPhone XR c&oacute; thể nhận ra th&oacute;i quen sử dụng điện thoại của bạn, sau đ&oacute; đưa ra những dự đo&aacute;n, h&agrave;nh động xử l&yacute; nhanh dựa tr&ecirc;n những g&igrave; bạn l&agrave;m từng ng&agrave;y. 8 nh&acirc;n AI ri&ecirc;ng biệt c&ograve;n hỗ trợ cho iPhone XR trong rất nhiều trường hợp, từ nhận diện khu&ocirc;n mặt,&nbsp;<a href="https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-ve-cong-nghe-chup-xoa-phong-la-gi-63770">chụp ảnh x&oacute;a ph&ocirc;ng</a>,<a href="https://fptshop.com.vn/tin-tuc/thu-thuat/cach-tat-smart-hdr-va-auto-hdr-tren-iphone-80056">&nbsp;smart HDR</a>&nbsp;cho đến&nbsp;<a href="https://fptshop.com.vn/tin-tuc/danh-gia/cong-nghe-thuc-te-ao-tang-cuong-ar-xu-huong-cong-nghe-tuong-lai-52560">c&ocirc;ng nghệ thực tế tăng cường AR</a>.</p>

<p><img alt="Hiệu năng iPhone XR" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-2.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Kỷ nguy&ecirc;n mới trong nhiếp ảnh di động</strong></h3>

<p>iPhone XR sở hữu cảm biến camera xuất sắc h&agrave;ng đầu, với độ ph&acirc;n giải 12MP, khẩu độ f/1.8, lấy n&eacute;t nhanh gấp đ&ocirc;i, chụp đ&ecirc;m sắc n&eacute;t v&agrave; c&oacute; khả năng chụp ảnh x&oacute;a ph&ocirc;ng ưu việt. T&iacute;nh năng Smart HDR mang tới những bức ảnh với &aacute;nh s&aacute;ng ch&acirc;n thực, kể cả trong điều kiện ngược s&aacute;ng. iPhone XR kh&ocirc;ng chỉ chụp ảnh x&oacute;a ph&ocirc;ng ch&iacute;nh x&aacute;c m&agrave; c&ograve;n c&oacute; thể điều chỉnh được độ mờ của hậu cảnh, th&ecirc;m c&aacute;c hiệu ứng để ảnh ch&acirc;n dung của bạn đẹp một c&aacute;ch chuy&ecirc;n nghiệp.</p>

<p><img alt="Kỷ nguyên mới trong nhiếp ảnh di động | iPhone XR" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-1.jpg" style="height:360px; width:640px" /></p>

<p>Khả năng chụp thiếu s&aacute;ng của iPhone XR được n&acirc;ng l&ecirc;n một tầm cao mới nhờ cảm biến s&acirc;u hơn, điểm ảnh lớn hơn. D&ugrave; l&agrave; trong đ&ecirc;m tối th&igrave; h&igrave;nh ảnh vẫn đầy đủ chi tiết v&agrave; &iacute;t nhiễu. Bạn cũng c&oacute; thể chụp những bức ảnh chuyển động nhanh một c&aacute;ch dễ d&agrave;ng khi tốc độ bắt n&eacute;t của iPhone XR gần như ngay lập tức.</p>

<p><img alt="Khả năng chụp thiếu sáng của iPhone XR" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-13.jpg" style="height:360px; width:640px" /></p>

<h3><strong>Chiếc iPhone c&oacute; pin tốt nhất</strong></h3>

<p>iPhone XR ch&iacute;nh l&agrave; chiếc iPhone c&oacute; thời lượng pin tốt nhất hiện nay, đảm bảo cho bạn sử dụng thoải m&aacute;i trong thời gian l&ecirc;n tới hai ng&agrave;y. C&ocirc;ng việc v&agrave; giải tr&iacute; sẽ lu&ocirc;n lu&ocirc;n tr&ocirc;i chảy với một chiếc điện thoại hiệu năng mạnh, pin tốt như iPhone XR.</p>

<p><img alt="Chiếc iPhone có pin tốt nhất | iPhone XR" src="https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-xr-9.jpg" style="height:360px; width:640px" /></p>',
20, CAST(N'2021-07-31' AS DATETIME), 'Admin', 2, 1)

