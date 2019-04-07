library(testthat)

TOLERANCE = 0.0001
EXPECTED_N_ROWS <- 1
EXPECTED_N_COLS <- 3

context("exploring Stack Exchange data")

test_that("data set has the expected dimensions", {
  se <- get_stack_exchange_data()
  actual_n_rows = dim(se)[1]
  expect_equal(actual_n_rows, EXPECTED_N_ROWS, tolerance = TOLERANCE)
  actual_n_cols = dim(se)[2]
  expect_equal(actual_n_cols, EXPECTED_N_COLS, tolerance = TOLERANCE)
})
