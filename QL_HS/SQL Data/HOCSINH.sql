/*
   Tuesday, October 10, 20177:13:29 PM
   User: anhquoc
   Server: ANHQUOC-PC\ANHQUOCPC
   Database: QL_HOCSINH
   Application: 
*/
USE [QL_HOCSINH]
GO
/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.HOCSINH
	(
	MAHS varchar(10) NOT NULL,
	HoTen nvarchar(50) NULL,
	NgaySinh date NULL,
	GioiTinh nvarchar(5) NULL,
	Email nvarchar(50) NULL,
	DiaChi nvarchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.HOCSINH ADD CONSTRAINT
	PK_HOCSINH PRIMARY KEY CLUSTERED 
	(
	MAHS
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]



GO
ALTER TABLE dbo.HOCSINH SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.HOCSINH', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.HOCSINH', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.HOCSINH', 'Object', 'CONTROL') as Contr_Per