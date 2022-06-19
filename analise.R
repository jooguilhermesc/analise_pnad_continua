library(PNADcIBGE)
library(survey)
library(convey)
library(magrittr)

dados_pnadc <- get_pnadc(year = 2022, quarter = 1, labels = TRUE)

class(dados_pnadc)
svytotal(~V2010, design = dados_pnadc, na.rm = TRUE)
svyby(~V2010, by = ~UF, design = dados_pnadc, FUN = svytotal, na.rm = TRUE)
