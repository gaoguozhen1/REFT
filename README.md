install.packages(c(
  "readxl", "dplyr", "purrr", "stringr", "tibble",
  "writexl", "webchem", "rcdk", "rcdklibs"
))
install.packages("https://raw.githubusercontent.com/gaoguozhen1/REFT/main/REFT_0.1.3_source.tar.gz",repos = NULL, type = "source")

library(REFT)
res <- reft_kegg_microbe_run("微生物-EC匹配1.csv")
head(res$results)
