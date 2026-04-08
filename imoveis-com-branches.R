# 1 - Leitura do banco de dados:

dados = read.csv2("imoveis.csv")
dados$metragem = as.numeric(dados$metragem)

# 2 - Gráficos:
hist(dados$metragem)
# 3 - Medidas:
media_imposto_anual = mean(dados$imposto_anual)
desvio_padrao_imposto_anual = sd(dados$imposto_anual)
mediana_imposto_anual = median(dados$imposto_anual)
