SELECT        dbo.Dim_Categoria.Desc_Categoria AS CATEGORIA, dbo.Dim_Tempo.Nome_Mes_Ano AS MESES, dbo.Dim_Tempo.Ano AS ANO, 
dbo.Fato_001.Faturamento AS FATURAMENTO, dbo.Fato_001.Quantidade_Vendida AS [QUANTIDADE VENDIDA], dbo.Dim_Cliente.Desc_Segmento AS SEGMENTO, dbo.Dim_Cliente.Desc_Regiao AS REGIAO, 
                         dbo.Dim_Cliente.Desc_Estado AS ESTADO, dbo.Dim_Fabrica.Desc_Fabrica AS FABRICA, dbo.Dim_Marca.Desc_Marca AS MARCA, dbo.Dim_Produto.Desc_Produto AS PRODUTO
FROM            dbo.Dim_Categoria INNER JOIN
                         dbo.Dim_Marca ON dbo.Dim_Categoria.Cod_Categoria = dbo.Dim_Marca.Cod_Categoria INNER JOIN
                         dbo.Dim_Produto ON dbo.Dim_Marca.Cod_Marca = dbo.Dim_Produto.Cod_Marca INNER JOIN
                         dbo.Fato_001 ON dbo.Dim_Produto.Cod_Produto = dbo.Fato_001.Cod_Produto INNER JOIN
                         dbo.Dim_Cliente ON dbo.Fato_001.Cod_Cliente = dbo.Dim_Cliente.Cod_Cliente INNER JOIN
                         dbo.Dim_Fabrica ON dbo.Fato_001.Cod_Fabrica = dbo.Dim_Fabrica.Cod_Fabrica INNER JOIN
                         dbo.Dim_Tempo ON dbo.Fato_001.Cod_Dia = dbo.Dim_Tempo.Cod_Dia