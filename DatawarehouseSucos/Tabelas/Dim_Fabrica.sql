CREATE TABLE [dbo].[Dim_Fabrica]
(
	[Cod_Fabrica] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Fabrica] NVARCHAR(200) NULL
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Descrição das Fabricas',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Dim_Fabrica',
    @level2type = N'COLUMN',
    @level2name = N'Desc_Fabrica'