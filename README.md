install.packages(c(
  "readxl", "dplyr", "purrr", "stringr", "tibble",
  "writexl", "webchem", "rcdk", "rcdklibs"
))
install.packages("https://raw.githubusercontent.com/gaoguozhen1/REFT/main/REFT_0.1.3_source.tar.gz",repos = NULL, type = "source")

library(REFT)

######################Molecular functional trait

library(writexl)

res <- reft_run_simple(
  input_file = "ex.xlsx"
)


write_xlsx(
  list(
    descriptors = res$descriptors,
    unmatched = res$unmatched,
    match_log = res$match_log
  ),
  "REFT_results.xlsx"
)

#####################KEGG-MICROBE

res <- reft_kegg_microbe_run("micro-EC1.csv")
head(res$results)

