library(tidyverse)

test.data <- bayesnec::nec_data

pal <- RColorBrewer::brewer.pal.info
pals <- pal[which(pal$category == "qual"), ] %>% row.names()

default.models <- bayesnec::models()$decline
extra.models <- setdiff(bayesnec::models()$all, default.models)

usethis::use_data(nec.data, pals, default.models, extra.models, internal = TRUE, overwrite = TRUE)
