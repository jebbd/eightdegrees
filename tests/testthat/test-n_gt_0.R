test_that("n must be greater than 0", {
  expect_error(munro_pal(-1), "n must be greater than 0")
})

test_that("n must be greater than 0", {
  expect_error(core_range_pal(0), "n must be greater than 0")
})
