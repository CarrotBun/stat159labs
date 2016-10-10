# load the source code of the functions to be tested
source("../functions/range-value.R")

# context with one test that groups expectations
context("Test for range value") 

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})


test_that("range works as expected", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_equal(range_value(y), NA_real_)
  expect_length(range_value(y), 1)
})

test_that("range works as expected", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_equal(range_value(z), 1L)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
})

test_that("range works as expected", {
  w <- letters[1:5]
  
  expect_error(range_value(w), 'non-numeric argument to binary operator')
})


# assuming that your working directory is "test-that/"
# from the R console
#library(testthat)
#test_file("tests.R")
