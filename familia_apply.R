
# Família Apply ----------------------------------------------------------------------------------------------------------------------------
# Referência: R Descomplicado --------------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 21/02/22 ---------------------------------------------------------------------------------------------------------------------------

# Sobre a família Apply --------------------------------------------------------------------------------------------------------------------

## O grupo de funções da família apply pertence nativamente ao R
## (pacote base).

## Funções: apply, sapply, tapply, mapply, lapply, vapply, rapply.

## Essas funções não surgiram para substituir os loops convencionais
## e sim, como uma alternativa adicional para análises mais complexas.

# Carregar dados ---------------------------------------------------------------------------------------------------------------------------

library(tidyverse)
starwars

# Função apply -----------------------------------------------------------------------------------------------------------------------------

## Aplica uma função a um vetor ou matriz a partir de uma margem especificada.

starwars %>%
  select(height, mass, birth_year) %>%
  apply(MARGIN = 2, FUN = sum, na.rm = T)

# Função lapply ----------------------------------------------------------------------------------------------------------------------------

## Similar ao apply, a diferença é que poderá receber uma lista, um vetor,
## ou um data frame como entrada.

starwars %>%
  select(height, mass, birth_year) %>%
  lapply(MARGIN = 2, FUN = mean, na.rm = T)

# Função sapply ----------------------------------------------------------------------------------------------------------------------------

## Similar ao lapply, a diferença é que o resultado é apresentado em um formato
## mais amigável.

starwars %>%
  select(height, mass, birth_year) %>%
  sapply(MARGIN = 2, FUN = median, na.rm = T)

# Função tapply ----------------------------------------------------------------------------------------------------------------------------

## Aplica uma função a um subconjunto de um vetor que é construído a partir
## de um outro vetor (normalmente, um fator).

tapply(starwars$height, starwars$eye_color, 
       FUN = mean, na.rm = T)
