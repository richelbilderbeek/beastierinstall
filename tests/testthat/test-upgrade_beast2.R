test_that("use", {
  if (!beastier::is_beast2_installed()) return()

  expect_silent(upgrade_beast2())
})

test_that("upgrade", {
  folder_name <- tempfile()
  expect_false(beastier::is_beast2_installed())
  beastierinstall::install_beast2(folder_name = folder_name)
  beastierinstall::upgrade_beast2(folder_name = folder_name)
})

test_that("give error when BEAST2 is not installed", {
  expect_error(
    beastierinstall::upgrade_beast2(folder_name = folder_name),
    "BEAST2 is not installed"
  )
})
