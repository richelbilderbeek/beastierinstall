test_that("use", {
  if (!is_beast2_installed()) return()

  expect_silent(upgrade_beast2())
})


test_that("give error when BEAST2 is not installed", {
  if (!is_on_ci()) return()
  if (!is_beast2_installed()) return()

  expect_true(beastier::is_beast2_installed())

  beastierinstall::uninstall_beast2()
  expect_error(
    beastierinstall::upgrade_beast2(),
    "BEAST2 is not installed"
  )
  beastierinstall::install_beast2()
  expect_true(beastier::is_beast2_installed())
})
