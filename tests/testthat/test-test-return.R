test_that("munro returns correctly", {
  expect_equal(munro_pal(3), c("#015576","#6F92B2","#9E3776"))
})

test_that("core range returns correctly", {
  expect_equal(core_range_pal(3), c("#4097C1","#CE5E3C","#538A4B"))
})
