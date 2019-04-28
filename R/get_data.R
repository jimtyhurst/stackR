# Functions to load Stack Exchange data.

library(readr)
library(tibble)

#' @export
get_stack_exchange_data <- function() {
  as_tibble(list(x = "not", y = "implemented", z = "yet"))
}

download_data <- function() {
  # temp <- tempfile()
  # download.file("https://archive.org/download/stackexchange/stackoverflow.com-Tags.7z", temp)
  # data <- read.table(unz(temp, "Tags.xml"))
  # unlink(temp)

  XML::xmlParse(system.file("extdata", "Tags.xml", package = "stackR"))
}
