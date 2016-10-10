# load the source code of the functions to be tested
source("../functions/center-measures.R")

# context with one test that groups expectations
context("Test for center measures") 

test_that("center measures works as expected", {
  y <- c(1, 2, 3, 4)
  expect_equal(center_measures(y), c(2.5, 2.5))
  expect_length(center_measures(y), 2)
  expect_type(center_measures(y), 'double')
})

#library(testthat)
#setwd("~/stat159/labs/lab07/test-that")
#test_file("tests/tests3.R")