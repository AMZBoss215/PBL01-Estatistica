# Carregando os dados do csv
dados <- read.csv("data/alunos_curso.csv", header = TRUE, sep = ",")

# Visualizar as primeiras linhas para conferir as colunas
head(dados)

# Resumo estatístico geral (média, mediana, quartis, min e max)
summary(dados$idade)
summary(dados$nota_final)

# Função para calcular a Moda (o valor mais frequente)
# >> Em R, não temos uma função nativa para calcular a Moda,
# >> portanto tivemos que recriá-la

calcular_moda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Aplicando
moda_idade <- calcular_moda(dados$idade)
print(paste("A idade mais comum é:", moda_idade))

# [ Cálculo das proporções de quem trabalha e/ou faz monitoria ]

  # Tabela de frequências para quem trabalha
  tab_trabalha <- table(dados$trabalha)
  prop_trabalha <- round(prop.table(tab_trabalha) * 100, digits=2)
  print(prop_trabalha)
  
  # Tabela de frequências para monitoria
  tab_monitoria <- table(dados$usa_monitoria)
  prop_monitoria <- round(prop.table(tab_monitoria) * 100, digits=2)
  print(prop_monitoria)

# [ Gerando os elementos gráficos com os dados obtidos ]

# Gráfico de barras simples para satisfação
png("plots/barplot_satisfacao.png", width=800, height=600)
  barplot(table(dados$satisfacao), 
        main="Nível de Satisfação com o Curso",
        col="steelblue",
        xlab="Categorias", 
        ylab="Frequência")
dev.off()

# Função para CV (Coeficiente de Variação): 
# (Desvio Padrão / Média) * 100
cv <- function(x) (sd(x, na.rm=T) / mean(x, na.rm=T)) * 100

# Média de notas de quem trabalha vs. quem não trabalha
# Arredondando para 2 casas decimais
round(tapply(dados$nota_final, dados$trabalha, mean, na.rm = TRUE),
      digits = 2)

# Boxplot para comparar visualmente (isso aqui no relatório fica profissional)
png("plots/boxplot_trabalha.png", width=800, height=600)
boxplot(nota_final ~ trabalha, data = dados,
        main = "Impacto do Trabalho na Nota Final",
        xlab = "Trabalha?", ylab = "Nota Final",
        col = c("red", "green"))
dev.off()

# [ Calculando o percentual exato ]

# 1. Remover os NAs para o cálculo não dar erro
notas <- na.omit(dados$nota_final)

# 2. Aplicar a Regra de Sturges manualmente para o texto do trabalho
n <- length(notas)
k <- ceiling(1 + 3.322 * log10(n))

# 3. Criar o histograma usando o 'k' que você calculou
png("plots/hist_notas.png", width=800, height=600)
hist(notas, 
     breaks = k, 
     main = "Distribuição das Notas de Estatística",
     xlab = "Notas", 
     ylab = "Frequência Absoluta",
     col = "lightblue",
     border = "white")
dev.off()

# [ Determinando a dist. de notas finais ]

# 1. Filtrar as notas (tirando os NAs)
total_alunos <- length(notas)

# 2. Contar quantos estão abaixo de 6.0
alunos_risco <- sum(notas < 6.0)

# 3. Calcular o percentual exato
percentual_risco <- (alunos_risco / total_alunos) * 100

# 4. Arredondar conforme a regra que discutimos (se o professor pedir)
percentual_final <- ceiling(percentual_risco) 

print(paste("O percentual de alunos na zona de risco é:", percentual_final, "%"))

# Cálculo numérico exato (Média)
round(tapply(dados$nota_final, dados$usa_monitoria, mean, na.rm = TRUE),
      digits = 2)

# Comparação visual com Boxplot
png("plots/boxplot_monitoria.png", width=800, height=600)
boxplot(nota_final ~ usa_monitoria, data = dados,
        main = "Eficácia da Monitoria",
        xlab = "Frequenta a Monitoria?", ylab = "Nota Final",
        col = c("#f0f0f0", "#3399ff"))
dev.off()

# [ Criando a Ogiva de Galton ]
# 1. Obter as frequências acumuladas relativas
dist_freq <- hist(notas, breaks = k, plot = FALSE)
acumulada <- c(0, cumsum(dist_freq$counts) / length(notas) * 100)

# 2. Plotar o gráfico
png("plots/ogiva_notas.png", width=800, height=600)
 plot(dist_freq$breaks, acumulada, type = "b", pch = 19, col = "blue",
      main = "Ogiva de Galton - Frequência Acumulada das Notas",
      xlab = "Notas", ylab = "Percentual Acumulado (%)")
 abline(h = 46, v = 6, col = "red", lty = 2) # Linha guia no ponto de risco
dev.off()