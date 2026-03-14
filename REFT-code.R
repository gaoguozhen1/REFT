install.packages(c(
  "readxl", "dplyr", "purrr", "stringr", "tibble",
  "writexl", "webchem", "rcdk", "rcdklibs"
))
install.packages("REFT_0.1.2_source.tar.gz", repos = NULL, type = "source")
library(REFT)
library(writexl)
res <- reft_run_simple(
  input_file = "高国震meta_intensity_neg_hmdb_kegg_lipidmaps(1).xlsx"
)

write_xlsx(
  list(
    descriptors = res$descriptors,
    unmatched = res$unmatched,
    match_log = res$match_log
  ),
  "REFT_results.xlsx"
)
