/*增加支付接口中的回调域设置*/
alter table [PayInterface] add [Pai_Returl] [nvarchar](500) NULL
go
/*重新构建菜单*/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Ro__01D345B0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Ro__01D345B0]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Ta__02C769E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Ta__02C769E9]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Is__03BB8E22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Is__03BB8E22]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Is__04AFB25B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Is__04AFB25B]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Is__05A3D694]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Is__05A3D694]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Is__0697FACD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Is__0697FACD]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_St__078C1F06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_St__078C1F06]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Wi__0880433F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Wi__0880433F]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ManageMen__MM_Wi__09746778]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ManageMenu] DROP CONSTRAINT [DF__ManageMen__MM_Wi__09746778]
END

GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ManageMenu]') AND type in (N'U'))
DROP TABLE [dbo].[ManageMenu]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Purview__Dep_Id__67DE6983]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Purview] DROP CONSTRAINT [DF__Purview__Dep_Id__67DE6983]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Purview__EGrp_Id__68D28DBC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Purview] DROP CONSTRAINT [DF__Purview__EGrp_Id__68D28DBC]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Purview__Posi_Id__69C6B1F5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Purview] DROP CONSTRAINT [DF__Purview__Posi_Id__69C6B1F5]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Purview__MM_Id__6ABAD62E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Purview] DROP CONSTRAINT [DF__Purview__MM_Id__6ABAD62E]
END

GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Purview]') AND type in (N'U'))
DROP TABLE [dbo].[Purview]
GO



GO
/****** Object:  Table [dbo].[Purview]    Script Date: 05/21/2018 15:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purview](
	[Pur_Id] [int] IDENTITY(1,1) NOT NULL,
	[Dep_Id] [int] NULL,
	[EGrp_Id] [int] NULL,
	[Posi_Id] [int] NULL,
	[MM_Id] [int] NULL,
	[Pur_State] [nvarchar](50) NULL,
	[Pur_Type] [nvarchar](50) NULL,
	[Org_ID] [int] NULL,
	[Olv_ID] [int] NULL,
 CONSTRAINT [aaaaaPurview_PK] PRIMARY KEY NONCLUSTERED 
(
	[Pur_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Pur_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Pur_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Dep_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Dep_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Dep_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'EGrp_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'EGrp_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'EGrp_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Posi_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Posi_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Posi_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Pur_State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Pur_State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_State'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Pur_Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Pur_Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview', @level2type=N'COLUMN',@level2name=N'Pur_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2013/1/30 6:54:53' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2013/1/30 6:54:53' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限记录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Purview' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'70' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Purview'
GO
SET IDENTITY_INSERT [dbo].[Purview] ON
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5682, NULL, NULL, NULL, 522, N'half', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5683, NULL, NULL, NULL, 525, N'half', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5684, NULL, NULL, NULL, 621, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5685, NULL, NULL, NULL, 685, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (4131, NULL, NULL, 13, 522, N'half', N'posi', NULL, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (4132, NULL, NULL, 13, 525, N'sel', N'posi', NULL, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5686, NULL, NULL, NULL, 524, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5687, NULL, NULL, NULL, 643, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5688, NULL, NULL, NULL, 527, N'half', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (4133, NULL, NULL, 13, 535, N'sel', N'posi', NULL, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (4134, NULL, NULL, 13, 544, N'sel', N'posi', NULL, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (4135, NULL, NULL, 13, 524, N'sel', N'posi', NULL, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5689, NULL, NULL, NULL, 539, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (4137, NULL, NULL, 13, 545, N'sel', N'posi', NULL, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (4138, NULL, NULL, 13, 610, N'sel', N'posi', NULL, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5690, NULL, NULL, NULL, 541, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5691, NULL, NULL, NULL, 627, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5692, NULL, NULL, NULL, 667, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5693, NULL, NULL, NULL, 523, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5694, NULL, NULL, NULL, 665, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5695, NULL, NULL, NULL, 544, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5696, NULL, NULL, NULL, 545, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5697, NULL, NULL, NULL, 535, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5698, NULL, NULL, NULL, 610, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5699, NULL, NULL, NULL, 526, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5700, NULL, NULL, NULL, 537, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5701, NULL, NULL, NULL, 538, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5702, NULL, NULL, NULL, 536, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5703, NULL, NULL, NULL, 686, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5704, NULL, NULL, NULL, 546, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5705, NULL, NULL, NULL, 528, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5706, NULL, NULL, NULL, 607, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5707, NULL, NULL, NULL, 565, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5708, NULL, NULL, NULL, 530, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5709, NULL, NULL, NULL, 532, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5710, NULL, NULL, NULL, 566, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5711, NULL, NULL, NULL, 568, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5712, NULL, NULL, NULL, 687, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5713, NULL, NULL, NULL, 618, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5714, NULL, NULL, NULL, 619, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5715, NULL, NULL, NULL, 609, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5716, NULL, NULL, NULL, 688, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5717, NULL, NULL, NULL, 637, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5718, NULL, NULL, NULL, 639, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5719, NULL, NULL, NULL, 640, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5720, NULL, NULL, NULL, 689, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5721, NULL, NULL, NULL, 638, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5722, NULL, NULL, NULL, 641, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5723, NULL, NULL, NULL, 642, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5724, NULL, NULL, NULL, 547, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5725, NULL, NULL, NULL, 550, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5726, NULL, NULL, NULL, 672, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5727, NULL, NULL, NULL, 673, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5728, NULL, NULL, NULL, 674, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5729, NULL, NULL, NULL, 675, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5730, NULL, NULL, NULL, 552, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5731, NULL, NULL, NULL, 553, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5732, NULL, NULL, NULL, 554, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5733, NULL, NULL, NULL, 629, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5734, NULL, NULL, NULL, 628, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5735, NULL, NULL, NULL, 680, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5736, NULL, NULL, NULL, 681, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5737, NULL, NULL, NULL, 670, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5738, NULL, NULL, NULL, 666, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5739, NULL, NULL, NULL, 684, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5740, NULL, NULL, NULL, 635, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5741, NULL, NULL, NULL, 561, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5742, NULL, NULL, NULL, 562, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3626, NULL, NULL, NULL, 522, N'half', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3627, NULL, NULL, NULL, 523, N'half', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3628, NULL, NULL, NULL, 607, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3629, NULL, NULL, NULL, 547, N'half', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5743, NULL, NULL, NULL, 563, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3631, NULL, NULL, NULL, 550, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3633, NULL, NULL, NULL, 552, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3634, NULL, NULL, NULL, 553, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3635, NULL, NULL, NULL, 554, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3640, NULL, NULL, NULL, 561, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3641, NULL, NULL, NULL, 562, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3642, NULL, NULL, NULL, 563, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3643, NULL, NULL, NULL, 564, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3644, NULL, NULL, NULL, 569, N'half', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3645, NULL, NULL, NULL, 570, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3646, NULL, NULL, NULL, 572, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3649, NULL, NULL, NULL, 583, N'sel', N'orglevel', NULL, 2)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3934, NULL, NULL, NULL, 522, N'half', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3935, NULL, NULL, NULL, 526, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3936, NULL, NULL, NULL, 537, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3937, NULL, NULL, NULL, 538, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3938, NULL, NULL, NULL, 536, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3939, NULL, NULL, NULL, 525, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3940, NULL, NULL, NULL, 535, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3941, NULL, NULL, NULL, 544, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3942, NULL, NULL, NULL, 524, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3944, NULL, NULL, NULL, 545, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3945, NULL, NULL, NULL, 610, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3946, NULL, NULL, NULL, 523, N'half', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3947, NULL, NULL, NULL, 609, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3948, NULL, NULL, NULL, 528, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3950, NULL, NULL, NULL, 607, N'sel', N'orglevel', NULL, 6)
GO
print 'Processed 100 total records'
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3951, NULL, NULL, NULL, 546, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3952, NULL, NULL, NULL, 529, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3953, NULL, NULL, NULL, 530, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3954, NULL, NULL, NULL, 531, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3955, NULL, NULL, NULL, 532, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3956, NULL, NULL, NULL, 534, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3957, NULL, NULL, NULL, 533, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3958, NULL, NULL, NULL, 565, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3959, NULL, NULL, NULL, 566, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3960, NULL, NULL, NULL, 568, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3961, NULL, NULL, NULL, 547, N'half', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5744, NULL, NULL, NULL, 564, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3963, NULL, NULL, NULL, 552, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3964, NULL, NULL, NULL, 553, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3965, NULL, NULL, NULL, 554, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3972, NULL, NULL, NULL, 561, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3973, NULL, NULL, NULL, 562, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3974, NULL, NULL, NULL, 563, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3975, NULL, NULL, NULL, 564, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3976, NULL, NULL, NULL, 569, N'half', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3977, NULL, NULL, NULL, 593, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3978, NULL, NULL, NULL, 594, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3979, NULL, NULL, NULL, 595, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3980, NULL, NULL, NULL, 596, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3981, NULL, NULL, NULL, 597, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3982, NULL, NULL, NULL, 598, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3983, NULL, NULL, NULL, 574, N'half', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3984, NULL, NULL, NULL, 576, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3985, NULL, NULL, NULL, 580, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3986, NULL, NULL, NULL, 577, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3987, NULL, NULL, NULL, 584, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3988, NULL, NULL, NULL, 585, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3989, NULL, NULL, NULL, 586, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3990, NULL, NULL, NULL, 587, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3991, NULL, NULL, NULL, 588, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3992, NULL, NULL, NULL, 589, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3993, NULL, NULL, NULL, 600, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3994, NULL, NULL, NULL, 590, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (3995, NULL, NULL, NULL, 591, N'sel', N'orglevel', NULL, 6)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5745, NULL, NULL, NULL, 663, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5746, NULL, NULL, NULL, 664, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5747, NULL, NULL, NULL, 662, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5748, NULL, NULL, NULL, 671, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5749, NULL, NULL, NULL, 569, N'half', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5750, NULL, NULL, NULL, 570, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5751, NULL, NULL, NULL, 572, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5752, NULL, NULL, NULL, 622, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5753, NULL, NULL, NULL, 626, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5754, NULL, NULL, NULL, 574, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5755, NULL, NULL, NULL, 576, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5756, NULL, NULL, NULL, 580, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5757, NULL, NULL, NULL, 577, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5758, NULL, NULL, NULL, 588, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5759, NULL, NULL, NULL, 589, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5760, NULL, NULL, NULL, 600, N'sel', N'organ', -1, NULL)
INSERT [dbo].[Purview] ([Pur_Id], [Dep_Id], [EGrp_Id], [Posi_Id], [MM_Id], [Pur_State], [Pur_Type], [Org_ID], [Olv_ID]) VALUES (5761, NULL, NULL, NULL, 590, N'sel', N'organ', -1, NULL)
SET IDENTITY_INSERT [dbo].[Purview] OFF
/****** Object:  Table [dbo].[ManageMenu]    Script Date: 05/21/2018 15:49:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManageMenu](
	[MM_Id] [int] IDENTITY(1,1) NOT NULL,
	[MM_Name] [nvarchar](100) NOT NULL,
	[MM_Type] [nvarchar](50) NULL,
	[MM_Root] [int] NOT NULL,
	[MM_Link] [nvarchar](255) NULL,
	[MM_Marker] [nvarchar](255) NULL,
	[MM_Tax] [int] NOT NULL,
	[MM_PatId] [int] NOT NULL,
	[MM_Color] [nvarchar](50) NULL,
	[MM_Font] [nvarchar](50) NULL,
	[MM_IsBold] [bit] NOT NULL,
	[MM_IsItalic] [bit] NOT NULL,
	[MM_IcoS] [nvarchar](255) NULL,
	[MM_IcoB] [nvarchar](255) NULL,
	[MM_IsUse] [bit] NOT NULL,
	[MM_IsShow] [bit] NOT NULL,
	[MM_Intro] [nvarchar](255) NULL,
	[MM_State] [bit] NOT NULL,
	[MM_Func] [nvarchar](50) NULL,
	[MM_WinWidth] [int] NOT NULL,
	[MM_WinHeight] [int] NOT NULL,
	[MM_IcoX] [int] NOT NULL,
	[MM_IcoY] [int] NOT NULL,
 CONSTRAINT [aaaaaManageMenu_PK] PRIMARY KEY NONCLUSTERED 
(
	[MM_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1080' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䏯꟮䕃鮪뗖䵲' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2760' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'հ碱얚䤇劽ꉸ�늊' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Name'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'戊恥䊻➇⥸惰玑' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'쓽�黫䛚ﲟᡴ覈' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Root' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Root' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Root'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'턡ﾟᅗ䰡�ᩢ㳧泞' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Link' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Link'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'቙跽⍠䳹ﾄ㨲㱢̿' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Marker' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Marker' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Marker'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'頢ꋭ㓰䨚㪵ⶵꫡ瘯' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Tax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Tax' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Tax'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'蕾筍䣣잯稨俪' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_PatId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_PatId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_PatId'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'⻚촫䳀ኳꓻ쪌⠋' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Color' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Color' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Color'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䙪쫔뉃䴐⍱䡍朙' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Font' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Font' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Font'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'ض㞝䑒늾覈ꗡ퀃' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IsBold' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IsBold' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'㟳ᚴ䵒䊈跆躼ꗒ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IsItalic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IsItalic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsItalic'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'睛帞䘮䀿璷�꼆祡' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IcoS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IcoS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoS'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'싟�䫣䴣﮸뗐믵뤻' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IcoB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IcoB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IcoB'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'벓䉭咒ᙕ놩遢' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IsUse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IsUse' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsUse'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'⌞艭뿱乞ẅ馲䈱敍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_IsShow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_IsShow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_IsShow'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'팇퐏쮦䱉ꮤ鹰㶘쨾' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Intro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Intro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Intro'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'䐖鋖ꎩ䈢겒୙ᓥょ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_State'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'㉶�駯䪀颦횮' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_Func' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_Func' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_Func'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'뻦�ᓭ争ꚓᇀ敚획' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_WinWidth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_WinWidth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinWidth'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2052' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'檧츘胖䨁玳叒拀⡤' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MM_WinHeight' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MM_WinHeight' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu', @level2type=N'COLUMN',@level2name=N'MM_WinHeight'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'2014/9/15 9:42:35' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2014/9/15 9:42:35' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统管理菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ManageMenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'242' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ManageMenu'
GO
SET IDENTITY_INSERT [dbo].[ManageMenu] ON
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (625, N'试题导出', N'item', 569, N'/manage/Questions/Export.aspx', N'', 51, 593, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (626, N'我的学员', N'item', 569, N'/manage/teacher/mystudent.aspx', N'', 251, 570, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 7, 71)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (220, N'全站备份', N'item', 88, N'sys/sitebackup.aspx', N'', 90, 125, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (221, N'首选项', N'item', 88, N'', N'', 0, 88, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (222, N'常规', N'item', 88, N'sys/general.aspx', N'', 30, 221, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (627, N'学员在线', N'item', 522, N'/manage/admin/stonline.aspx', N'', 290, 527, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (628, N'在线时间', N'item', 547, N'/manage/student/online.aspx', N'', 50, 675, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 78, 164)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (629, N'学习记录', N'item', 547, N'/manage/student/studylog.aspx', N'', 40, 675, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 101, 164)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (88, N'系统设置', N'item', 88, N'', N'system', 17, 0, N'', N'', 0, 0, NULL, NULL, 1, 1, N'请不要轻易改动！', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (89, N'功能菜单', N'item', 88, N'sys/menuroot.aspx', N'MenuTree', 130, 101, N'', N'', 0, 0, NULL, NULL, 1, 1, N'管理界面左侧的菜单', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (90, N'数据库备份', N'item', 88, N'sys/databasebackup.aspx', N'', 180, 125, N'', N'', 0, 0, NULL, NULL, 1, 1, N'此操作，仅限对access版的数据库备份。', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (94, N'修改密码', N'item', 92, N'ty', NULL, 5, 95, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'tyuityityu', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (95, N'用户管理', N'item', 92, N'ty', NULL, 10, 92, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'tyuityityu', 1, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (96, N'查询用户信息', N'item', 92, N'ty', NULL, 10, 95, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'tyuityityu', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (101, N'菜单管理', N'item', 88, N'', NULL, 110, 221, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (102, N'系统菜单', N'item', 88, N'sys/SysMenu.aspx', NULL, 170, 101, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'位于管理界面右上方的下拉菜单', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (103, N'系统菜单', NULL, 103, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 1, 1, NULL, 0, N'sys', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (104, N'账户', N'item', 103, N'#', N'', 60, 103, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'sys', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (108, N'关于', N'open', 103, N'help/about.aspx', N'', 85, 103, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'sys', 400, 200, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (111, N'基本资料', N'open', 103, N'Personal/info.aspx', N'', 30, 104, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'用户基本资料', 0, N'sys', 640, 450, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (112, N'密码修改', N'open', 103, N'Personal/password.aspx', N'', 20, 104, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'sys', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (113, N'首页', N'link', 103, N'/', N'', 10, 103, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'sys', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (121, N'退出', N'event', 103, N'if(confirm(''是否真的要退出？'')){window.location.href=''/manage/index.aspx'';}', N'', 100, 103, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'sys', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (122, N'部门信息', N'item', 88, N'sys/depart.aspx', N'purview', 250, 124, NULL, NULL, 0, 0, NULL, NULL, 0, 0, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (124, N'组织机构', N'item', 88, N'', N'', 230, 316, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (125, N'安全管理', N'item', 88, N'', N'', 140, 221, NULL, NULL, 0, 0, NULL, NULL, 0, 0, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (128, N'机构信息', N'item', 88, N'sys/organizationinfo.aspx', N'', 210, 316, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (129, N'单位介绍', N'item', 88, N'sys/organizationintro.aspx', N'', 220, 316, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (140, N'工作组', N'item', 88, N'sys/empgroup.aspx', N'purview', 280, 124, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (141, N'岗位设置', N'item', 88, N'sys/position.aspx', N'purview', 260, 124, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (142, N'管理员', N'item', 88, N'sys/employee.aspx', N'', 240, 124, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (193, N'系统日志', N'item', 88, N'', N'', 200, 88, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (194, N'登录日志', N'item', 88, N'Sys/LogsLogin.aspx', N'', 120, 193, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (195, N'操作记录', N'item', 88, N'sys/LogsWork.aspx', N'', 190, 193, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (278, N'系统参数', N'item', 88, N'sys/syspara.aspx', N'', 150, 221, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (316, N'基本信息', N'item', 88, N'', N'', 20, 88, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (369, N'数据清理', N'item', 88, N'sys/dataclear.aspx', N'', 160, 221, NULL, NULL, 0, 0, NULL, NULL, 0, 0, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (370, N'职务头衔', N'item', 88, N'sys/title.aspx', N'', 270, 124, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (510, N'机构管理', N'item', 651, N'', N'', 90, 651, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (511, N'机构列表', N'item', 651, N'sys/Organization.aspx', N'', 130, 510, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (512, N'机构审核', N'item', 651, N'sys/OrganVerify.aspx', N'', 140, 510, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (513, N'机构等级', N'item', 651, N'sys/OrganLevel.aspx', N'', 160, 510, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (514, N'机构权限', N'item', 651, N'sys/purview.aspx?type=organ', N'', 150, 510, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (542, N'二级域名预留', N'item', 88, N'sys/limitdomain.aspx', N'', 40, 221, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (522, N'机构的管理', N'item', 522, NULL, N'organAdmin', 18, 0, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 105, 69)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (528, N'机构信息', N'item', 522, N'/manage/sys/organizationinfo.aspx', N'', 110, 686, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 101, 164)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (535, N'教师信息', N'item', 522, N'/manage/teacher/list.aspx', N'', 150, 665, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 162, 132)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (536, N'新闻栏目', N'item', 522, N'/manage/content/columns.aspx', N'', 350, 526, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 85, 8)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (537, N'新闻发布', N'item', 522, N'/manage/content/Contents.aspx?action=modify', N'', 330, 526, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'在', 0, N'func', 400, 300, 180, 7)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (541, N'优秀教师', N'item', 522, N'/manage/teacher/order.aspx', N'', 280, 527, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 162, 134)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (544, N'学员管理', N'item', 522, N'/manage/admin/students.aspx', N'', 130, 665, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 156, 8)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (547, N'学员的管理', N'item', 547, NULL, N'student', 19, 0, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 0, 0, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (685, N'课程', N'item', 522, N'/manage/admin/courses.aspx?admin=true', N'', 180, 621, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (550, N'课程', N'node', 547, N'/manage/student/selfcourse.aspx', N'', 190, 547, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 0, N'func', 400, 300, 32, 164)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (623, N'院系设置', N'item', 522, N'/manage/admin/Departs.aspx', N'', 170, 621, NULL, NULL, 0, 0, NULL, NULL, 0, 0, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (552, N'测试成绩', N'item', 547, N'/manage/Student/TestArchives.aspx', N'', 0, 675, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 0, N'func', 400, 300, 84, 7)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (553, N'考试成绩', N'item', 547, N'/manage/Student/Archives.aspx', N'', 10, 675, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 0, N'func', 400, 300, 125, 164)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (554, N'错题回顾', N'item', 547, N'/manage/student/QuesError.aspx', N'', 30, 675, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 0, N'func', 400, 300, 187, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (561, N'个人信息', N'node', 547, N'', N'', 205, 547, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 0, N'func', 400, 300, 106, 69)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (562, N'基本信息', N'item', 547, N'/manage/student/info.aspx', N'', 160, 561, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 0, N'func', 400, 300, 186, 132)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (563, N'联系方式', N'item', 547, N'/manage/student/link.aspx', N'', 170, 561, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 0, N'func', 400, 300, 210, 133)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (564, N'安全管理', N'item', 547, N'/manage/student/safe.aspx', N'', 180, 561, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 0, N'func', 400, 300, 57, 199)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (565, N'管理员', N'node', 522, N'', N'', 450, 523, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 1, N'func', 400, 300, 130, 70)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (566, N'个人信息', N'item', 522, N'/manage/Personal/info.aspx', N'', 240, 565, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 0, N'func', 400, 300, 179, 8)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (523, N'平台管理', N'item', 522, N'', N'', 400, 522, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 132, 37)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (524, N'专业', N'item', 522, N'/manage/sys/Subject.aspx', N'', 190, 621, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 206, 6)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (525, N'教务管理', N'item', 522, N'', N'', 390, 522, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'gggg', 0, N'func', 400, 300, 230, 166)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (545, N'学员班级', N'item', 522, N'/manage/admin/studentsort.aspx', N'', 140, 665, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 8, 71)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (568, N'安全管理', N'item', 522, N'/manage/Personal/safe.aspx', N'', 250, 565, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'已经选学的课程', 0, N'func', 400, 300, 6, 166)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (569, N'教师的管理', N'item', 569, NULL, N'teacher', 21, 0, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (570, N'课程管理', N'item', 569, N'', N'', 165, 569, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 32, 164)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (572, N'课程列表', N'item', 569, N'/manage/teacher/courses.aspx', N'', 220, 570, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 230, 68)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (574, N'测试/考试', N'item', 569, N'', N'', 170, 569, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 232, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (607, N'关于我们', N'item', 522, N'/manage/sys/organizationintro.aspx', N'', 120, 686, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 7, 71)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (576, N'试卷管理', N'item', 569, N'/manage/exam/testpaper.aspx', N'', 140, 574, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 8, 133)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (577, N'考试成绩', N'item', 569, N'/manage/teacher/Archives.aspx', N'', 160, 574, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 57, 132)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (606, N'授权', N'open', 103, N'panel/Authorization.aspx', N'', 90, 103, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'sys', 600, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (608, N'模板管理', N'item', 88, N'template/list.aspx', N'', 50, 221, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 0, 0)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (580, N'考试管理', N'item', 569, N'/manage/exam/Examination.aspx', N'', 150, 574, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 31, 132)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (609, N'界面风格', N'item', 522, N'/manage/template/select.aspx', N'', 475, 522, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 1, N'func', 400, 300, 133, 38)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (610, N'教师职称', N'item', 522, N'/manage/Teacher/sort.aspx', N'', 160, 665, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 186, 133)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (583, N'知识库管理', N'item', 569, N'/manage/Knowledge/contents.aspx', N'', 60, 584, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 63, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (584, N'交流', N'item', 569, N'', N'', 200, 569, NULL, NULL, 0, 0, NULL, NULL, 0, 0, N'', 0, N'func', 400, 300, 8, 197)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (585, N'留言回复', N'item', 569, N'', N'', 70, 584, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 108, 133)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (586, N'在线解答', N'item', 569, N'', N'', 110, 584, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 135, 132)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (587, N'论坛', N'item', 569, N'/manage/site/MessageBoard.aspx', N'', 120, 584, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 8, 71)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (588, N'个人信息', N'node', 569, N'', N'', 210, 569, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 162, 133)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (589, N'基本信息', N'item', 569, N'/manage/teacher/info.aspx', N'', 80, 588, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 186, 132)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (590, N'工作履历', N'item', 569, N'/manage/teacher/history.aspx', N'', 100, 588, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 231, 133)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (591, N'密码安全', N'item', 569, N'/manage/teacher/safe.aspx', N'', 130, 588, NULL, NULL, 0, 0, NULL, NULL, 0, 0, N'', 0, N'func', 400, 300, 57, 199)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (593, N'题库管理', N'link', 569, N'#', N'', 190, 569, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 91, 102)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (594, N'填空题', N'item', 569, N'/manage/Questions/list.aspx?type=5', N'', 0, 593, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 116, 102)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (595, N'单选题', N'item', 569, N'/manage/Questions/list.aspx?type=1', N'', 20, 593, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 140, 99)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (596, N'多选题', N'item', 569, N'/manage/Questions/list.aspx?type=2', N'', 30, 593, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 162, 98)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (597, N'判断题', N'item', 569, N'/manage/Questions/list.aspx?type=3', N'', 40, 593, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 186, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (598, N'简答题', N'item', 569, N'/manage/Questions/list.aspx?type=4', N'', 50, 593, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 210, 98)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (600, N'联系方式', N'item', 569, N'/manage/teacher/link.aspx', N'', 90, 588, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 210, 132)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (622, N'课程交流', N'item', 569, N'/manage/site/MessageBoard.aspx', N'', 250, 570, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 7, 71)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (526, N'新闻/通知', N'node', 522, N'', N'', 420, 523, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 32, 164)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (527, N'统计分析', N'node', 522, N'', N'', 320, 525, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 57, 132)
GO
print 'Processed 100 total records'
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (529, N'组织机构', N'item', 522, N'', N'', 470, 522, NULL, NULL, 0, 0, NULL, NULL, 0, 0, N'', 1, N'func', 400, 300, 230, 38)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (530, N'管理员列表', N'item', 522, N'/manage/sys/employee.aspx', N'', 0, 565, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 7, 70)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (531, N'部门信息', N'item', 522, N'/manage/sys/depart.aspx', N'purview', 360, 529, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 160, 70)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (532, N'角色管理', N'item', 522, N'/manage/sys/position.aspx', N'purview', 230, 565, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 135, 133)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (533, N'职务头衔', N'item', 522, N'/manage/sys/title.aspx', N'', 380, 529, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 108, 8)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (534, N'工作组', N'item', 522, N'/manage/sys/empgroup.aspx', N'purview', 370, 529, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 8, 198)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (538, N'通知', N'item', 522, N'/manage/site/notice.aspx', N'', 340, 526, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 58, 6)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (539, N'热门课程', N'item', 522, N'/Manage/Admin/CourseHot.aspx', N'', 260, 527, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'选课最多的专业', 0, N'func', 400, 300, 83, 37)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (540, N'热门教师', N'item', 522, N'', N'', 270, 527, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 59, 39)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (546, N'参数设置', N'item', 522, N'/manage/admin/organsetup.aspx', N'', 100, 686, NULL, NULL, 0, 0, NULL, NULL, 1, 0, N'', 0, N'func', 400, 300, 57, 71)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (618, N'友情链接', N'item', 522, N'/Manage/Site/Links/LinksInfo.aspx', N'', 80, 687, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 33, 7)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (619, N'链接分类', N'item', 522, N'/Manage/Site/Links/LinksSort.aspx', N'', 90, 687, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (621, N'课程管理', N'node', 522, N'/manage/admin/courses.aspx?admin=true', N'', 310, 525, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (630, N'资金管理', N'item', 651, N'/manage/money/Details.aspx', N'', 20, 651, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 206, 7)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (631, N'资金流水', N'item', 651, N'/manage/money/Details.aspx', N'', 170, 630, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 6, 38)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (632, N'充值码', N'item', 651, N'/manage/money/RechargeSet.aspx', N'', 180, 630, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 82, 69)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (633, N'支付接口', N'item', 88, N'/manage/pay/paylist.aspx', N'', 60, 654, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 58, 71)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (637, N'模板选择', N'item', 522, N'/manage/template/select.aspx?site=web', N'', 50, 688, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 79, 164)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (638, N'模板选择', N'item', 522, N'/manage/template/select.aspx?site=mobi', N'', 10, 689, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 210, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (639, N'导航菜单', N'item', 522, N'/manage/admin/Navigation.aspx?site=web', N'', 60, 688, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 33, 6)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (640, N'轮换图片', N'item', 522, N'/manage/admin/ShowPicture.aspx?site=web', N'', 70, 688, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 32, 165)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (641, N'轮换图片', N'item', 522, N'/manage/admin/ShowPicture.aspx?site=mobi', N'', 30, 689, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 163, 100)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (642, N'导航按钮', N'item', 522, N'/manage/admin/Navigation.aspx?site=mobi', N'', 40, 689, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 34, 7)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (635, N'充值', N'item', 547, N'/Manage/Student/Moneyrecharge.aspx', N'', 240, 547, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 230, 133)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (686, N'参数设置', N'node', 522, N'', N'', 430, 523, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 57, 70)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (643, N'题库', N'item', 522, N'/manage/Questions/list.aspx', N'', 200, 621, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 91, 102)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (650, N'账户管理', N'item', 651, N'sys/Accounts.aspx', N'', 100, 655, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (651, N'基础设置', N'item', 651, NULL, N'base', 15, 0, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (652, N'短信接口', N'item', 88, N'SMS/SMSSetup.aspx', N'', 70, 654, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (672, N'当前学习', N'item', 547, N'/manage/student/Course_Curr.aspx', N'', 100, 550, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (654, N'接口管理', N'item', 88, N'', N'', 100, 221, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (655, N'账号管理', N'item', 651, N'', N'', 0, 651, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (656, N'第三方登录', N'item', 88, N'sys/OtherLogin.aspx', N'', 65, 654, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (657, N'注册协议', N'item', 651, N'', N'', 120, 655, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (658, N'教师申请', N'item', 651, N'sys/Agreement.aspx?state=teacher', N'', 70, 657, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (659, N'学员注册', N'item', 651, N'sys/Agreement.aspx?state=accounts', N'', 60, 657, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (660, N'分润设置', N'item', 651, N'', N'', 185, 630, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (661, N'积分设置', N'item', 651, N'sys/PointSetup.aspx', N'', 30, 660, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (662, N'我的朋友', N'item', 547, N'/manage/student/subordinates.aspx', N'', 140, 663, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 7, 72)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (663, N'分享', N'node', 547, N'', N'', 230, 547, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 7, 71)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (664, N'分享链接', N'item', 547, N'/manage/student/share.aspx', N'', 130, 663, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 34, 6)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (665, N'注册账户', N'node', 522, N'', N'', 410, 523, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 160, 71)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (666, N'积分', N'item', 547, N'/Manage/Student/PointDetails.aspx', N'', 80, 680, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (667, N'教师评价', N'item', 522, N'/manage/teacher/Comments.aspx', N'', 300, 527, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (668, N'分润设置', N'item', 651, N'sys/ProfitSharing.aspx', N'', 40, 660, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (669, N'分销管理', N'item', 651, N'', N'', 50, 660, NULL, NULL, 0, 0, NULL, NULL, 0, 0, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (670, N'卡券', N'item', 547, N'/Manage/Student/CouponDetails.aspx', N'', 70, 680, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (671, N'收益', N'item', 547, N'/manage/student/Profit.aspx', N'', 150, 663, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (673, N'选修课程', N'item', 547, N'/manage/student/Course_Study.aspx', N'', 110, 550, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (674, N'过期课程', N'item', 547, N'/manage/student/Course_Expire.aspx', N'', 120, 550, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (675, N'学习回顾', N'node', 547, N'', N'', 200, 547, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 58, 133)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (687, N'友情链接', N'node', 522, N'', N'', 460, 523, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 133, 133)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (688, N'Web端风格', N'node', 522, N'', N'', 210, 609, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 77, 164)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (689, N'移动端风格', N'node', 522, N'', N'', 220, 609, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 5, 39)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (681, N'资金', N'item', 547, N'/Manage/Student/MoneyDetails.aspx', N'', 60, 680, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (680, N'资金/卡券/积分', N'node', 547, N'', N'', 210, 547, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 8, 134)
INSERT [dbo].[ManageMenu] ([MM_Id], [MM_Name], [MM_Type], [MM_Root], [MM_Link], [MM_Marker], [MM_Tax], [MM_PatId], [MM_Color], [MM_Font], [MM_IsBold], [MM_IsItalic], [MM_IcoS], [MM_IcoB], [MM_IsUse], [MM_IsShow], [MM_Intro], [MM_State], [MM_Func], [MM_WinWidth], [MM_WinHeight], [MM_IcoX], [MM_IcoY]) VALUES (684, N'收益', N'item', 547, N'/manage/student/Profit.aspx', N'', 90, 680, NULL, NULL, 0, 0, NULL, NULL, 1, 1, N'', 0, N'func', 400, 300, 90, 101)
SET IDENTITY_INSERT [dbo].[ManageMenu] OFF
/****** Object:  Default [DF__ManageMen__MM_Ro__01D345B0]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[ManageMenu] ADD  CONSTRAINT [DF__ManageMen__MM_Ro__01D345B0]  DEFAULT ((0)) FOR [MM_Root]
GO
/****** Object:  Default [DF__ManageMen__MM_Ta__02C769E9]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[ManageMenu] ADD  CONSTRAINT [DF__ManageMen__MM_Ta__02C769E9]  DEFAULT ((0)) FOR [MM_Tax]
GO
/****** Object:  Default [DF__ManageMen__MM_Is__03BB8E22]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[ManageMenu] ADD  CONSTRAINT [DF__ManageMen__MM_Is__03BB8E22]  DEFAULT ((0)) FOR [MM_IsBold]
GO
/****** Object:  Default [DF__ManageMen__MM_Is__04AFB25B]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[ManageMenu] ADD  CONSTRAINT [DF__ManageMen__MM_Is__04AFB25B]  DEFAULT ((0)) FOR [MM_IsItalic]
GO
/****** Object:  Default [DF__ManageMen__MM_Is__05A3D694]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[ManageMenu] ADD  CONSTRAINT [DF__ManageMen__MM_Is__05A3D694]  DEFAULT ((1)) FOR [MM_IsUse]
GO
/****** Object:  Default [DF__ManageMen__MM_Is__0697FACD]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[ManageMenu] ADD  CONSTRAINT [DF__ManageMen__MM_Is__0697FACD]  DEFAULT ((1)) FOR [MM_IsShow]
GO
/****** Object:  Default [DF__ManageMen__MM_St__078C1F06]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[ManageMenu] ADD  CONSTRAINT [DF__ManageMen__MM_St__078C1F06]  DEFAULT ((1)) FOR [MM_State]
GO
/****** Object:  Default [DF__ManageMen__MM_Wi__0880433F]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[ManageMenu] ADD  CONSTRAINT [DF__ManageMen__MM_Wi__0880433F]  DEFAULT ((0)) FOR [MM_WinWidth]
GO
/****** Object:  Default [DF__ManageMen__MM_Wi__09746778]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[ManageMenu] ADD  CONSTRAINT [DF__ManageMen__MM_Wi__09746778]  DEFAULT ((0)) FOR [MM_WinHeight]
GO
/****** Object:  Default [DF__Purview__Dep_Id__67DE6983]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[Purview] ADD  DEFAULT ((0)) FOR [Dep_Id]
GO
/****** Object:  Default [DF__Purview__EGrp_Id__68D28DBC]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[Purview] ADD  DEFAULT ((0)) FOR [EGrp_Id]
GO
/****** Object:  Default [DF__Purview__Posi_Id__69C6B1F5]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[Purview] ADD  DEFAULT ((0)) FOR [Posi_Id]
GO
/****** Object:  Default [DF__Purview__MM_Id__6ABAD62E]    Script Date: 05/21/2018 15:49:53 ******/
ALTER TABLE [dbo].[Purview] ADD  DEFAULT ((0)) FOR [MM_Id]
GO
