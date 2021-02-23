test_that("check warnings for insufficient colours", {
  expect_warning(munro_pal(9), "Insufficient values in manual scale. 9 needed but only 8 provided.")
})

test_that("check warnings for insufficient colours", {
  expect_warning(core_range_pal(9), "Insufficient values in manual scale. 9 needed but only 6 provided.")
})
