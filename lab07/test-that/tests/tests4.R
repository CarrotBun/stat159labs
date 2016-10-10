# load the source code of the functions to be tested
source("../functions/spread-measures.R")

# context with one test that groups expectations
context("Test for spread measures") 

test_that("center measures works as expected", {
  y <- c(1, 2, 3, 4)
  expect_equal(spread_measures(y), c(1, 4, 1.5, 1.290994))
  expect_length(spread_measures(y), 4)
  expect_type(spread_measures(y), 'double')
})

#library(testthat)
#setwd("~/stat159/labs/lab07/test-that")
#test_file("tests/tests3.R")