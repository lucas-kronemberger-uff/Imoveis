#Script referente à atividade da disciplina "Prática Estatística"

#Instalação de biblioteca para auxiliar na anáise de dados:
library(tidyverse)

#Leitura do banco de dados:
dados = read.csv2("imoveis.csv")

#cálculo da média das variáveis:
attach(dados)

as.numeric(metragem) #Isso é feito pois, originalmente, os valores da variável metragem estavam como texto(character)

media_preco = mean(preco)
media_metragem = mean(metragem)
media_idade = mean(idade)
media_itens_embutidos = mean(itens_embutidos)
media_imposto_anual = mean(imposto_anual)

#Cálculo do desvio-padrão :

desvio_padrao_preco = sd(preco)
desvio_padrao_metragem = sd(metragem)
desvio_padrao_idade = sd(idade)
desvio_padrao_itens_embutidos = sd(itens_embutidos)
desvio_padrao_imposto_anual = sd(imposto_anual)

#Histograma do preço do imóvel:

hist(preco)

#Dispersão de imposto x metragem:

dados %>% 
  ggplot(aes(x = imposto_anual , y = metragem))+
  geom_point()+
  labs( title = "Gráfico de dispersão de imposto x renda", 
        x = "Imposto anual", 
        y= "Metragem")
  
