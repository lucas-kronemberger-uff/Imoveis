# 1 - Leitura do banco de dados:

dados = read.csv2("imoveis.csv")
dados$metragem = as.numeric(dados$metragem)
# 2 - Gráficos:
hist(dados$metragem)
# 3 - Medidas:
# (Preencher na branch Medidas)
#Calcule média, medina e desvio-padrão de imposto anual