
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

starwars %>%
  select(height, mass, birth_year) %>%
  apply(MARGIN = 2, FUN = sum, na.rm = T)

# Função lapply ----------------------------------------------------------------------------------------------------------------------------

starwars %>%
  select(height, mass, birth_year) %>%
  lapply(MARGIN = 2, FUN = mean, na.rm = T)

# Função sapply ----------------------------------------------------------------------------------------------------------------------------

starwars %>%
  select(height, mass, birth_year) %>%
  sapply(MARGIN = 2, FUN = median, na.rm = T)

# Função tapply ----------------------------------------------------------------------------------------------------------------------------

tapply(starwars$height, starwars$eye_color, 
       FUN = mean, na.rm = T)
