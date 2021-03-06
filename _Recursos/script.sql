USE [DW_SUCOS]
GO
/****** Object:  Table [dbo].[Dim_Categoria]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Categoria](
	[Cod_Categoria] [nvarchar](50) NOT NULL,
	[Desc_Categoria] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Cliente]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Cliente](
	[Cod_Cliente] [nvarchar](50) NOT NULL,
	[Desc_Cliente] [nvarchar](200) NULL,
	[Cod_Cidade] [nvarchar](50) NULL,
	[Desc_Cidade] [nvarchar](200) NULL,
	[Cod_Estado] [nvarchar](50) NULL,
	[Desc_Estado] [nvarchar](200) NULL,
	[Cod_Regiao] [nvarchar](50) NULL,
	[Desc_Regiao] [nvarchar](200) NULL,
	[Cod_Segmento] [nvarchar](50) NULL,
	[Desc_Segmento] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Fabrica]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Fabrica](
	[Cod_Fabrica] [nvarchar](50) NOT NULL,
	[Desc_Fabrica] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Fabrica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Marca]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Marca](
	[Cod_Marca] [nvarchar](50) NOT NULL,
	[Desc_Marca] [nvarchar](200) NULL,
	[Cod_Categoria] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Organizacional]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Organizacional](
	[Cod_Filho] [nvarchar](50) NOT NULL,
	[Desc_Filho] [nvarchar](200) NULL,
	[Cod_Pai] [nvarchar](50) NULL,
	[Esquerda] [int] NULL,
	[Direita] [int] NULL,
	[Nivel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Filho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Produto]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Produto](
	[Cod_Produto] [nvarchar](50) NOT NULL,
	[Desc_Produto] [nvarchar](200) NULL,
	[Atr_Tamanho] [nvarchar](200) NULL,
	[Atr_Sabor] [nvarchar](200) NULL,
	[Cod_Marca] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Produto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Tempo]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Tempo](
	[Cod_Dia] [nvarchar](50) NOT NULL,
	[Data] [date] NULL,
	[Cod_Semana] [int] NULL,
	[Nome_Dia_Semana] [nvarchar](50) NULL,
	[Cod_Mes] [int] NULL,
	[Nome_Mes] [nvarchar](50) NULL,
	[Cod_Mes_Ano] [nvarchar](50) NULL,
	[Nome_Mes_Ano] [nvarchar](50) NULL,
	[Cod_Trimestre] [int] NULL,
	[Nome_Trimestre] [nvarchar](50) NULL,
	[Cod_Trimestre_Ano] [nvarchar](50) NULL,
	[Nome_Trimestre_Ano] [nvarchar](50) NULL,
	[Cod_Semestre] [int] NULL,
	[Nome_Semestre] [nvarchar](50) NULL,
	[Cod_Semestre_Ano] [nvarchar](50) NULL,
	[Nome_Semestre_Ano] [nvarchar](50) NULL,
	[Ano] [nvarchar](50) NULL,
	[Tipo_Dia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Dia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fato_001]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fato_001](
	[Cod_Cliente] [nvarchar](50) NOT NULL,
	[Cod_Produto] [nvarchar](50) NOT NULL,
	[Cod_Organizacional] [nvarchar](50) NOT NULL,
	[Cod_Fabrica] [nvarchar](50) NOT NULL,
	[Cod_Dia] [nvarchar](50) NOT NULL,
	[Faturamento] [float] NULL,
	[Imposto] [float] NULL,
	[Custo_Variavel] [float] NULL,
	[Quantidade_Vendida] [float] NULL,
	[Unidade_Vendida] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Cliente] ASC,
	[Cod_Produto] ASC,
	[Cod_Organizacional] ASC,
	[Cod_Fabrica] ASC,
	[Cod_Dia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fato_002]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fato_002](
	[Cod_Cliente] [nvarchar](50) NOT NULL,
	[Cod_Produto] [nvarchar](50) NOT NULL,
	[Cod_Fabrica] [nvarchar](50) NOT NULL,
	[Cod_Dia] [nvarchar](50) NOT NULL,
	[Frete] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Cliente] ASC,
	[Cod_Produto] ASC,
	[Cod_Fabrica] ASC,
	[Cod_Dia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fato_003]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fato_003](
	[Cod_Fabrica] [nvarchar](50) NOT NULL,
	[Cod_Dia] [nvarchar](50) NOT NULL,
	[Custo] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Fabrica] ASC,
	[Cod_Dia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fato_004]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fato_004](
	[Cod_Cliente] [nvarchar](50) NOT NULL,
	[Cod_Produto] [nvarchar](50) NOT NULL,
	[Cod_Organizacional] [nvarchar](50) NOT NULL,
	[Cod_Dia] [nvarchar](50) NOT NULL,
	[Meta_Faturamento] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Cliente] ASC,
	[Cod_Produto] ASC,
	[Cod_Organizacional] ASC,
	[Cod_Dia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fato_005]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fato_005](
	[Cod_Produto] [nvarchar](50) NOT NULL,
	[Cod_Fabrica] [nvarchar](50) NOT NULL,
	[Cod_Dia] [nvarchar](50) NOT NULL,
	[Meta_Custo] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_Produto] ASC,
	[Cod_Fabrica] ASC,
	[Cod_Dia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP_AUXCONTROLE]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_AUXCONTROLE](
	[ID] [nvarchar](50) NULL,
	[CONTADOR] [int] NULL,
	[NIVEL] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEMP_AUXTABELA]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEMP_AUXTABELA](
	[ID] [nvarchar](50) NULL,
	[IDPAI] [nvarchar](50) NULL,
	[ESQ] [int] NULL,
	[DIR] [int] NULL,
	[NIVEL] [int] NULL,
	[NOME] [char](200) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dim_Marca]  WITH CHECK ADD  CONSTRAINT [FK_Dim_Marca_Dim_Categoria] FOREIGN KEY([Cod_Categoria])
REFERENCES [dbo].[Dim_Categoria] ([Cod_Categoria])
GO
ALTER TABLE [dbo].[Dim_Marca] CHECK CONSTRAINT [FK_Dim_Marca_Dim_Categoria]
GO
ALTER TABLE [dbo].[Dim_Organizacional]  WITH CHECK ADD  CONSTRAINT [FK_Dim_Organizacional_Dim_Organizacional] FOREIGN KEY([Cod_Pai])
REFERENCES [dbo].[Dim_Organizacional] ([Cod_Filho])
GO
ALTER TABLE [dbo].[Dim_Organizacional] CHECK CONSTRAINT [FK_Dim_Organizacional_Dim_Organizacional]
GO
ALTER TABLE [dbo].[Dim_Produto]  WITH CHECK ADD  CONSTRAINT [FK_Dim_Produto_Dim_Marca] FOREIGN KEY([Cod_Marca])
REFERENCES [dbo].[Dim_Marca] ([Cod_Marca])
GO
ALTER TABLE [dbo].[Dim_Produto] CHECK CONSTRAINT [FK_Dim_Produto_Dim_Marca]
GO
ALTER TABLE [dbo].[Fato_001]  WITH CHECK ADD  CONSTRAINT [FK_Fato_001_Dim_Cliente] FOREIGN KEY([Cod_Cliente])
REFERENCES [dbo].[Dim_Cliente] ([Cod_Cliente])
GO
ALTER TABLE [dbo].[Fato_001] CHECK CONSTRAINT [FK_Fato_001_Dim_Cliente]
GO
ALTER TABLE [dbo].[Fato_001]  WITH CHECK ADD  CONSTRAINT [FK_Fato_001_Dim_Fabrica] FOREIGN KEY([Cod_Fabrica])
REFERENCES [dbo].[Dim_Fabrica] ([Cod_Fabrica])
GO
ALTER TABLE [dbo].[Fato_001] CHECK CONSTRAINT [FK_Fato_001_Dim_Fabrica]
GO
ALTER TABLE [dbo].[Fato_001]  WITH CHECK ADD  CONSTRAINT [FK_Fato_001_Dim_Organizacional] FOREIGN KEY([Cod_Organizacional])
REFERENCES [dbo].[Dim_Organizacional] ([Cod_Filho])
GO
ALTER TABLE [dbo].[Fato_001] CHECK CONSTRAINT [FK_Fato_001_Dim_Organizacional]
GO
ALTER TABLE [dbo].[Fato_001]  WITH CHECK ADD  CONSTRAINT [FK_Fato_001_Dim_Produto] FOREIGN KEY([Cod_Produto])
REFERENCES [dbo].[Dim_Produto] ([Cod_Produto])
GO
ALTER TABLE [dbo].[Fato_001] CHECK CONSTRAINT [FK_Fato_001_Dim_Produto]
GO
ALTER TABLE [dbo].[Fato_001]  WITH CHECK ADD  CONSTRAINT [FK_Fato_001_Dim_Tempo] FOREIGN KEY([Cod_Dia])
REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia])
GO
ALTER TABLE [dbo].[Fato_001] CHECK CONSTRAINT [FK_Fato_001_Dim_Tempo]
GO
ALTER TABLE [dbo].[Fato_002]  WITH CHECK ADD  CONSTRAINT [FK_Fato_002_Dim_Cliente] FOREIGN KEY([Cod_Cliente])
REFERENCES [dbo].[Dim_Cliente] ([Cod_Cliente])
GO
ALTER TABLE [dbo].[Fato_002] CHECK CONSTRAINT [FK_Fato_002_Dim_Cliente]
GO
ALTER TABLE [dbo].[Fato_002]  WITH CHECK ADD  CONSTRAINT [FK_Fato_002_Dim_Fabrica] FOREIGN KEY([Cod_Fabrica])
REFERENCES [dbo].[Dim_Fabrica] ([Cod_Fabrica])
GO
ALTER TABLE [dbo].[Fato_002] CHECK CONSTRAINT [FK_Fato_002_Dim_Fabrica]
GO
ALTER TABLE [dbo].[Fato_002]  WITH CHECK ADD  CONSTRAINT [FK_Fato_002_Dim_Produto] FOREIGN KEY([Cod_Produto])
REFERENCES [dbo].[Dim_Produto] ([Cod_Produto])
GO
ALTER TABLE [dbo].[Fato_002] CHECK CONSTRAINT [FK_Fato_002_Dim_Produto]
GO
ALTER TABLE [dbo].[Fato_002]  WITH CHECK ADD  CONSTRAINT [FK_Fato_002_Dim_Tempo] FOREIGN KEY([Cod_Dia])
REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia])
GO
ALTER TABLE [dbo].[Fato_002] CHECK CONSTRAINT [FK_Fato_002_Dim_Tempo]
GO
ALTER TABLE [dbo].[Fato_003]  WITH CHECK ADD  CONSTRAINT [FK_Fato_003_Dim_Fabrica] FOREIGN KEY([Cod_Fabrica])
REFERENCES [dbo].[Dim_Fabrica] ([Cod_Fabrica])
GO
ALTER TABLE [dbo].[Fato_003] CHECK CONSTRAINT [FK_Fato_003_Dim_Fabrica]
GO
ALTER TABLE [dbo].[Fato_003]  WITH CHECK ADD  CONSTRAINT [FK_Fato_003_Dim_Tempo] FOREIGN KEY([Cod_Dia])
REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia])
GO
ALTER TABLE [dbo].[Fato_003] CHECK CONSTRAINT [FK_Fato_003_Dim_Tempo]
GO
ALTER TABLE [dbo].[Fato_004]  WITH CHECK ADD  CONSTRAINT [FK_Fato_004_Dim_Cliente] FOREIGN KEY([Cod_Cliente])
REFERENCES [dbo].[Dim_Cliente] ([Cod_Cliente])
GO
ALTER TABLE [dbo].[Fato_004] CHECK CONSTRAINT [FK_Fato_004_Dim_Cliente]
GO
ALTER TABLE [dbo].[Fato_004]  WITH CHECK ADD  CONSTRAINT [FK_Fato_004_Dim_Organizacional] FOREIGN KEY([Cod_Organizacional])
REFERENCES [dbo].[Dim_Organizacional] ([Cod_Filho])
GO
ALTER TABLE [dbo].[Fato_004] CHECK CONSTRAINT [FK_Fato_004_Dim_Organizacional]
GO
ALTER TABLE [dbo].[Fato_004]  WITH CHECK ADD  CONSTRAINT [FK_Fato_004_Dim_Produto] FOREIGN KEY([Cod_Produto])
REFERENCES [dbo].[Dim_Produto] ([Cod_Produto])
GO
ALTER TABLE [dbo].[Fato_004] CHECK CONSTRAINT [FK_Fato_004_Dim_Produto]
GO
ALTER TABLE [dbo].[Fato_004]  WITH CHECK ADD  CONSTRAINT [FK_Fato_004_Dim_Tempo] FOREIGN KEY([Cod_Dia])
REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia])
GO
ALTER TABLE [dbo].[Fato_004] CHECK CONSTRAINT [FK_Fato_004_Dim_Tempo]
GO
ALTER TABLE [dbo].[Fato_005]  WITH CHECK ADD  CONSTRAINT [FK_Fato_005_Dim_Fabrica] FOREIGN KEY([Cod_Fabrica])
REFERENCES [dbo].[Dim_Fabrica] ([Cod_Fabrica])
GO
ALTER TABLE [dbo].[Fato_005] CHECK CONSTRAINT [FK_Fato_005_Dim_Fabrica]
GO
ALTER TABLE [dbo].[Fato_005]  WITH CHECK ADD  CONSTRAINT [FK_Fato_005_Dim_Produto] FOREIGN KEY([Cod_Produto])
REFERENCES [dbo].[Dim_Produto] ([Cod_Produto])
GO
ALTER TABLE [dbo].[Fato_005] CHECK CONSTRAINT [FK_Fato_005_Dim_Produto]
GO
ALTER TABLE [dbo].[Fato_005]  WITH CHECK ADD  CONSTRAINT [FK_Fato_005_Dim_Tempo] FOREIGN KEY([Cod_Dia])
REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia])
GO
ALTER TABLE [dbo].[Fato_005] CHECK CONSTRAINT [FK_Fato_005_Dim_Tempo]
GO
/****** Object:  StoredProcedure [dbo].[SP_MONTAESQDIR]    Script Date: 26/04/2019 13:11:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_MONTAESQDIR]
AS
BEGIN
DECLARE @v_Id NVARCHAR(50);
DECLARE @v_Id2 NVARCHAR(50);
DECLARE @v_Contador INT;
DECLARE @v_Nivel INT;
DECLARE @v_Membros INT;

DECLARE @v_Contador2 INT;
DECLARE @v_Nivel2 INT;

SELECT @v_Id = ID FROM TEMP_AUXCONTROLE;
SELECT @v_Contador = CONTADOR FROM TEMP_AUXCONTROLE;
SELECT @v_Nivel = NIVEL FROM TEMP_AUXCONTROLE;

UPDATE TEMP_AUXTABELA SET ESQ = @v_Contador WHERE ID = @v_Id;
UPDATE TEMP_AUXTABELA SET NIVEL = @v_Nivel WHERE ID = @v_Id;

SET @v_Contador = @v_Contador + 1;
SET @v_Nivel = @v_Nivel + 1;
SELECT @v_Membros = COUNT(*) FROM TEMP_AUXTABELA WHERE IDPAI = @v_Id AND ESQ IS NULL 
WHILE @v_Membros > 0
BEGIN
	     SELECT TOP 1 @v_Id2 = ID FROM TEMP_AUXTABELA WHERE IDPAI = @v_Id AND ESQ IS NULL ORDER BY ID;
		 INSERT INTO TEMP_AUXCONTROLE (ID, CONTADOR, NIVEL) VALUES (@v_ID2, @v_Contador, @v_Nivel)	 
		
		 EXEC SP_MONTAESQDIR
		 		
		 SELECT @v_Contador = CONTADOR FROM TEMP_AUXCONTROLE;
		 SELECT @v_Membros = COUNT(*) FROM TEMP_AUXTABELA WHERE IDPAI = @v_Id AND ESQ IS NULL
		 SET @v_Contador = @v_Contador + 1;
END;
INSERT INTO TEMP_AUXCONTROLE (ID, CONTADOR, NIVEL) VALUES (@v_ID, @v_Contador, @v_Nivel)
UPDATE TEMP_AUXTABELA SET DIR = @v_Contador WHERE ID = @v_Id;
END;

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descrição das Fabricas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Dim_Fabrica', @level2type=N'COLUMN',@level2name=N'Desc_Fabrica'
GO
