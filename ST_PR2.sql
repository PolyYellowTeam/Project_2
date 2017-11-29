SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vũ Ngọc Tuân
-- Create date: 28/11/2017
-- Description:	To get all records in Carts
-- table.
-- =============================================
CREATE PROCEDURE GetAllCart
	@PageIndex INT,
	@NumberRecords INT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
		Cart_Id,
		Emp_id,
		Customer_id,
		Cart_date,
		Cart_total,
		Ship_address,
		Ship_date,
		Cart_status,
		Ship_status,
		Payment_id,
		Pay_status
	FROM
		Carts
	WHERE
		Cart_status = 1 OR Cart_status = 2
	ORDER BY
		Cart_Id DESC
		
	SET NOCOUNT OFF;
END
GO

INSERT INTO Carts (Cart_date,Cart_total,Ship_address,Ship_date,Cart_status,Ship_status,Pay_status) VALUES ('11/28/2017',500000,N'Hà Nội','12/1/2017',1,0,0)	
INSERT INTO Carts (Cart_date,Cart_total,Ship_address,Ship_date,Cart_status,Ship_status,Pay_status) VALUES ('11/28/2017',500000,N'Lào Cai','12/1/2017',1,0,0)	
INSERT INTO Carts (Cart_date,Cart_total,Ship_address,Ship_date,Cart_status,Ship_status,Pay_status) VALUES ('11/28/2017',500000,N'Lạng Sơn','12/1/2017',1,0,0)	
INSERT INTO Carts (Cart_date,Cart_total,Ship_address,Ship_date,Cart_status,Ship_status,Pay_status) VALUES ('11/28/2017',500000,N'Sài Gòn','12/1/2017',1,0,0)	
INSERT INTO Carts (Cart_date,Cart_total,Ship_address,Ship_date,Cart_status,Ship_status,Pay_status) VALUES ('11/28/2017',500000,N'Yên Bái','12/1/2017',1,0,0)	
INSERT INTO Carts (Cart_date,Cart_total,Ship_address,Ship_date,Cart_status,Ship_status,Pay_status) VALUES ('11/28/2017',500000,N'Thái Bình','12/1/2017',1,0,0)	
INSERT INTO Carts (Cart_date,Cart_total,Ship_address,Ship_date,Cart_status,Ship_status,Pay_status) VALUES ('11/28/2017',500000,N'Nam Định','12/1/2017',1,0,0)	
