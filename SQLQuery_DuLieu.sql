Delete from Catalogs
INSERT INTO Catalogs VALUES ('cas_01',N'Thời trang nam',1)
INSERT INTO Catalogs VALUES ('cas_02',N'Thời trang nữ',1)
INSERT INTO Catalogs VALUES ('cas_03',N'Thời trang bé trai',1)
INSERT INTO Catalogs VALUES ('cas_04',N'Thời trang bé gái',1)
INSERT INTO Catalogs VALUES ('cas_05',N'Phụ kiện',1)
Delete from Categories

INSERT INTO Categories VALUES('cate01',N'Quần Jeans','cas_01',1)
INSERT INTO Categories VALUES('cate02',N'Quần Khaki','cas_01',1)
INSERT INTO Categories VALUES('cate03',N'Quần vải','cas_01',1)
INSERT INTO Categories VALUES('cate04',N'Quần Shorts','cas_01',1)
INSERT INTO Categories VALUES('cate05',N'Áo Sơ-mi','cas_01',1)
INSERT INTO Categories VALUES('cate06',N'Áo khoác','cas_01',1)
INSERT INTO Categories VALUES('cate07',N'Áo phông','cas_01',1)
INSERT INTO Categories VALUES('cate08',N'Trang phục công sở','cas_01',1)
INSERT INTO Categories VALUES('cate09',N'Trang phục thể thao','cas_01',1)
INSERT INTO Categories VALUES('cate10',N'Phụ kiện nam','cas_01',1)

INSERT INTO Categories VALUES('cate11',N'Váy đầm','cas_02',1)
INSERT INTO Categories VALUES('cate12',N'Quần Jeans','cas_02',1)
INSERT INTO Categories VALUES('cate13',N'Quần vải','cas_02',1)
INSERT INTO Categories VALUES('cate14',N'Áo phông','cas_02',1)
INSERT INTO Categories VALUES('cate15',N'Áo Sơ-mi','cas_02',1)
INSERT INTO Categories VALUES('cate16',N'Áo khoác','cas_02',1)
INSERT INTO Categories VALUES('cate17',N'Trang phục lót','cas_02',1)
INSERT INTO Categories VALUES('cate18',N'Trang phục công sở','cas_02',1)
INSERT INTO Categories VALUES('cate19',N'Trang phục thể thao','cas_02',1)
INSERT INTO Categories VALUES('cate20',N'Phụ kiện nữ','cas_02',1)

INSERT INTO Categories VALUES('cate21',N'Quần Jeans','cas_03',1)
INSERT INTO Categories VALUES('cate22',N'Quần Khaki','cas_03',1)
INSERT INTO Categories VALUES('cate23',N'Quần vải','cas_03',1)
INSERT INTO Categories VALUES('cate24',N'Quần Shorts','cas_03',1)
INSERT INTO Categories VALUES('cate25',N'Áo Sơ-mi','cas_03',1)
INSERT INTO Categories VALUES('cate26',N'Áo khoác','cas_03',1)
INSERT INTO Categories VALUES('cate27',N'Áo phông','cas_03',1)
INSERT INTO Categories VALUES('cate28',N'Mũ nón bé nam','cas_03',1)
INSERT INTO Categories VALUES('cate29',N'Trang phục thể thao','cas_03',1)
INSERT INTO Categories VALUES('cate30',N'Phụ kiện bé nam','cas_03',1)

INSERT INTO Categories VALUES('cate31',N'Váy đầm','cas_04',1)
INSERT INTO Categories VALUES('cate32',N'Quần Jeans','cas_04',1)
INSERT INTO Categories VALUES('cate33',N'Quần vải','cas_04',1)
INSERT INTO Categories VALUES('cate34',N'Áo phông','cas_04',1)
INSERT INTO Categories VALUES('cate35',N'Áo Sơ-mi','cas_04',1)
INSERT INTO Categories VALUES('cate36',N'Áo khoác','cas_04',1)
INSERT INTO Categories VALUES('cate37',N'Trang phục lót','cas_04',1)
INSERT INTO Categories VALUES('cate38',N'Mũ nón bé nữ','cas_04',1)
INSERT INTO Categories VALUES('cate39',N'Trang phục thể thao','cas_04',1)
INSERT INTO Categories VALUES('cate40',N'Phụ kiện bé nữ','cas_04',1)

INSERT INTO Categories VALUES('cate41',N'Kính mắt thời trang','cas_05',1)
INSERT INTO Categories VALUES('cate42',N'Túi du lịch','cas_05',1)
INSERT INTO Categories VALUES('cate43',N'Túi xách thời trang','cas_05',1)
INSERT INTO Categories VALUES('cate44',N'Balo thời trang','cas_05',1)
INSERT INTO Categories VALUES('cate45',N'Bóp ví thời trang','cas_05',1)
INSERT INTO Categories VALUES('cate46',N'Giày nam','cas_05',1)
INSERT INTO Categories VALUES('cate47',N'Giày nữ','cas_05',1)
INSERT INTO Categories VALUES('cate48',N'Găng tay, tất, bịp tai','cas_05',1)
INSERT INTO Categories VALUES('cate49',N'Vòng tay','cas_05',1)
INSERT INTO Categories VALUES('cate50',N'Đồng hồ thời trang','cas_05',1)

delete from Suppliers

INSERT INTO Suppliers VALUES('Armani',1)
INSERT INTO Suppliers VALUES('Dolce & Gabbana',1)
INSERT INTO Suppliers VALUES('Versace',1)
INSERT INTO Suppliers VALUES('Gucci',1)
INSERT INTO Suppliers VALUES('Burberry',1)
INSERT INTO Suppliers VALUES('Hermès',1)
INSERT INTO Suppliers VALUES('Dior',1)
INSERT INTO Suppliers VALUES('Prada',1)
INSERT INTO Suppliers VALUES('Chanel',1)
INSERT INTO Suppliers VALUES('Louis Vuitton',1)
INSERT INTO Suppliers VALUES('Balenciaga ',1)
INSERT INTO Suppliers VALUES('Zara',1)
INSERT INTO Suppliers VALUES('H & M',1)
INSERT INTO Suppliers VALUES('Forever 21',1)
INSERT INTO Suppliers VALUES('Topshop',1)
INSERT INTO Suppliers VALUES('Mango',1)
Delete from Products
INSERT INTO Products VALUES('pr01',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr02',N'Áo da nam cao cấp AD-383','cate06',2,20,555000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr03',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr04',N'Áo da nam cao cấp AD-383','cate06',2,20,580000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr05',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr06',N'Áo da nam cao cấp AD-383','cate06',2,20,590000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr07',N'Áo da nam cao cấp AD-383','cate06',2,20,50000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr08',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr09',N'Áo da nam cao cấp AD-383','cate06',2,20,500800,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr010',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr26',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr11',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr12',N'Áo da nam cao cấp AD-383','cate06',2,20,500900,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr13',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr01',N'Áo da nam cao cấp AD-383','cate06',2,20,507000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr14',N'Áo da nam cao cấp AD-383','cate06',2,20,530000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr15',N'Áo da nam cao cấp AD-383','cate06',2,20,800800,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr16',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr17',N'Áo da nam cao cấp AD-383','cate06',2,20,5000000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr18',N'Áo da nam cao cấp AD-383','cate06',2,20,5000800,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr19',N'Áo da nam cao cấp AD-383','cate06',2,20,5060000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr20',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr21',N'Áo da nam cao cấp AD-383','cate06',2,20,600000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr22',N'Áo da nam cao cấp AD-383','cate06',2,20,300000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr23',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr24',N'Áo da nam cao cấp AD-383','cate06',2,20,700000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)
INSERT INTO Products VALUES('pr25',N'Áo da nam cao cấp AD-383','cate06',2,20,500000,'images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','images/sanpham/aonam_01.jpg','Áo da của H2T là một món đồ thực sự giúp phái mạnh “ghi điểm” trước các chị em phụ nữ dù ở bất cứ khi nào. Cùng điểm qua mẫu áo da nam mới nhất nhé!',0,1)















SELECT * FROM Banners

INSERT INTO Banners VALUES (1,'girl1.jpg',N'Khuyến mại tháng 12','Yellow Blended Cotton "still fresh" t-shirt','10');
INSERT INTO Banners VALUES (2,'girl2.jpg',N'Khuyến mại tháng 12','Red Blended Cotton "still fresh" t-shirt','20');
INSERT INTO Banners VALUES (3,'girl3.jpg',N'Khuyến mại tháng 12','Black Blended Cotton "still fresh" t-shirt','30');

DELETE FROM Banners;

SELECT * FROM SEO_keywords

INSERT INTO SEO_keywords VALUES (N'Markito, markito, quan ao dep, quần áo đẹp, shop online, cua hang online, cửa hàng online');

DELETE FROM SEO_keywords








