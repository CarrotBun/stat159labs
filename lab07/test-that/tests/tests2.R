# load the source code of the functions to be tested
source("../functions/missing-values.R")

# context with one test that groups expectations
context("Test for missing values") 

test_that("missing works as expected", {
  y <- c(1, 2, 3, 4, NA)
  expect_gte(missing_values(y), 0)
  expect_length(missing_values(y), 1)
  expect_type(missing_values(y), 'double')
})

##########################################################################
#library(testthat)
#setwd("~/stat159/labs/lab07/test-that")
#test_file("tests/tests2.R")
