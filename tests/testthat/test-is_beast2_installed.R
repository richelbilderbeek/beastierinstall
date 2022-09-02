test_that("use", {

  # If the user has no access to Internet,
  # BEAST2 will be uninstalled without a way to
  # reinstall. Therefore, only do this on a CI service
  if (!beautier::is_on_ci()) return()

  if (beastier::is_beast2_installed()) {
    uninstall_beast2()
    expect_false(beastier::is_beast2_installed())
    install_beast2()
    expect_true(beastier::is_beast2_installed())
  } else  {
    expect_false(beastier::is_beast2_installed())
    install_beast2()
    expect_true(beastier::is_beast2_installed())
    uninstall_beast2()
    expect_false(beastier::is_beast2_installed())
  }
})
