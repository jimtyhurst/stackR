# Analyzes duplicates by language
# Most popular languages ranked on StackOverflow:
#   https://insights.stackoverflow.com/survey/2019
#
# Queries run on 2019-04-21:
# SELECT
# COUNT(DISTINCT(op.Id))
# FROM posts op
# WHERE
# op.posttypeid = 1            -- Question post
# AND op.Tags like '%<java>%'  -- Language tag
#
# SELECT COUNT(DISTINCT dp.id)
# FROM posts dp
# JOIN postlinks pl ON dp.id = pl.postid
# WHERE
# dp.posttypeid = 1 -- Question post
# AND pl.linktypeid = 3 -- duplicate
# AND dp.tags like '%<java>%';


library(readr)
library(dplyr)

languages <- readr::read_csv(system.file("extdata", "duplicates-totals-pct.csv", package = "stackR")) %>%
  dplyr::mutate(pct = (duplicate_posts / total_posts) * 100.0) %>%
  dplyr::arrange(pct, language)
