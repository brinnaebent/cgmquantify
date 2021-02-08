library(testthat)
library(cgmquantify)
library(utils)

#test_check("cgmquantify")


test_that("eA1c is correct", {
  expect_equal(eA1c(readfile("test_file.csv")),
  5.526016, 0.1)
})

test_that("GMI is correct", {
  expect_equal(GMI(readfile("test_file.csv")),
               5.986, 0.1)
})

test_that("J_index is correct", {
  expect_equal(J_index(readfile("test_file.csv")),
               19.796, 0.1)
})

test_that("interdaysd is correct", {
  expect_equal(interdaysd(readfile("test_file.csv")),
               28.799, 0.1)
})

test_that("interdaycv is correct", {
  expect_equal(interdaycv(readfile("test_file.csv")),
               25.736, 0.1)
})

test_that("LBGI is correct", {
  expect_equal(LBGI(readfile("test_file.csv")),
               0.9095, 0.1)
})

test_that("HBGI is correct", {
  expect_equal(HBGI(readfile("test_file.csv")),
               0.94299, 0.1)
})

test_that("MGE is correct", {
  expect_equal(MGE(readfile("test_file.csv")),
               135.423, 0.1)
})

test_that("MGN is correct", {
  expect_equal(MGN(readfile("test_file.csv")),
               106.564, 0.1)
})

test_that("POR correct", {
  expect_equal(POR(readfile("test_file.csv")),
               18.4909, 0.1)
})

test_that("TOR correct", {
  expect_equal(TOR(readfile("test_file.csv")),
               1985, 0.1)
})

test_that("TIR correct", {
  expect_equal(TIR(readfile("test_file.csv")),
               8750, 0.1)
})

