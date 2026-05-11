##########Please ensure that the dependencies have been installed

install.packages(c(
  "readxl", "dplyr", "purrr", "stringr", "tibble",
  "writexl", "webchem", "rcdk", "rcdklibs"
))

install.packages("remotes")

remotes::install_url(
  "https://raw.githubusercontent.com/gaoguozhen1/REFT/main/REFT_0.1.3.tar.gz",
  dependencies = TRUE,
  upgrade = "never"
)

library(REFT)

##########To ensure quick setup and debugging, we have provided two stripped-down example files.

######################Molecular functional trait

library(writexl)

res <- reft_run_simple(
  input_file = "IG.xlsx"
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

