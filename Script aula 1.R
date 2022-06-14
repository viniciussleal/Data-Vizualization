## Library do curso que contem os datasets
library(dslabs)
library(dplyr)
## Dataset utilizdo que trata de alturas de pessoas
data("heights")
head(heights)

## Proporção de cada grupo no data set
prop.table(table(heights$sex))

## Função de frequencia acumulada
a <- seq(min(heights$height), max(heights$height), length = 100)    # define range of values spanning the dataset
cdf_function <- function(x) {    # computes prob. for a single value
    mean(heights$height <= x)
}
cdf_values <- sapply(a, cdf_function)
plot(a, cdf_values)

