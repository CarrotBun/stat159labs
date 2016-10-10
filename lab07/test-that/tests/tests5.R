# load the source code of the functions to be tested
source("../functions/descriptive-stats.R")

# context with one test that groups expectations
context("Test for descriptive stats") 

test_that("descriptive stats works as expected", {
  y <- c(1, 2, 3)
  expect_equal(descriptive_stats(y), c(2, 2, 1, 3, 1, 1, 0))
  expect_length(descriptive_stats(y), 7)
  expect_type(descriptive_stats(y), 'double')
})

#library(testthat)
#setwd("~/stat159/labs/lab07/test-that")
#test_file("tests/tests5.R")