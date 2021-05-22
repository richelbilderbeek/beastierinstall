test_that("use", {

  if (!beastier::is_on_ci()) return()

  if (beastier::is_beast2_installed()) {
    expect_silent(beastier::check_beast2())
    uninstall_beast2()
    expect_error(beastier::check_beast2())
    install_beast2()
    expect_silent(beastier::check_beast2())
  } else {
    expect_error(beastier::check_beast2())
    install_beast2()
    expect_silent(beastier::check_beast2())
    uninstall_beast2()
    expect_error(beastier::check_beast2())
  }
})
