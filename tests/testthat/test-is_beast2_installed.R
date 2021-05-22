test_that("use", {

  # If the user has no access to Internet,
  # BEAST2 will be uninstalled without a way to
  # reinstall. Therefore, only do this on a CI service
  if (!is_on_ci()) return()

  if (is_beast2_installed()) {
    uninstall_beast2()
    expect_false(is_beast2_installed())
    install_beast2()
    expect_true(is_beast2_installed())
  } else  {
    expect_false(is_beast2_installed())
    install_beast2()
    expect_true(is_beast2_installed())
    uninstall_beast2()
    expect_false(is_beast2_installed())
  }
})