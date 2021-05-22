test_that("Run with spaces in the launcher.jar path, for Windows", {

  if (!is_beast2_installed()) return()

  beast2_folder <- file.path(tempfile(), "path with spaces", "even more")
  expect_silent(install_beast2(folder_name = beast2_folder))
  expect_true(is_beast2_installed(folder_name = beast2_folder))
  beast2_path <- get_default_beast2_bin_path(beast2_folder = beast2_folder)
  expect_true(
    is_beast2_input_file(
      filename = get_beastier_path("anthus_2_4.xml"),
      beast2_path = beast2_path
    )
  )
})

