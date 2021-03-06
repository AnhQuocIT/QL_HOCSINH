/*
   Sunday, October 08, 201712:05:44 PM
   User: anhquoc
   Server: ANHQUOC-PC\ANHQUOCPC
   Database: QL_HOCSINH
   Application: 
*/
USE [QL_HOCSINH]
GO
/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

BEGIN TRANSACTION
GO

CREATE TABLE dbo.CTLOP
	(
	MAHS varchar(10) NOT NULL,
	MALOP varchar(5) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.CTLOP ADD CONSTRAINT
	PK_CTLOP PRIMARY KEY CLUSTERED 
	(
	MAHS
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

COMMIT
select Has_Perms_By_Name(N'dbo.CTLOP', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.CTLOP', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.CTLOP', 'Object', 'CONTROL') as Contr_Per
