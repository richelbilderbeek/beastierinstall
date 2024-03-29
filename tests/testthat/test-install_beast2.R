test_that("install at non-standard location", {

  if (!beautier::is_on_ci()) return()
  if (rappdirs::app_dir()$os == "mac") return()

  folder_name <- tempfile()
  beast_jar_path <- file.path(folder_name, "beast", "lib", "launcher.jar")
  expect_false(file.exists(beast_jar_path))

  expect_message(
    install_beast2(
      folder_name = folder_name,
      verbose = TRUE
    ),
    "BEAST2 installed at"
  )
  expect_true(file.exists(beast_jar_path))
  expect_true(beastier::is_beast2_installed(folder_name = folder_name))
})

test_that("install twice must throw", {

  if (!beautier::is_on_ci()) return()
  if (rappdirs::app_dir()$os == "mac") return()

  folder_name <- tempfile()
  if (!beastier::is_beast2_installed(folder_name = folder_name)) {
    install_beast2(folder_name = folder_name)
  }
  expect_error(
    install_beast2(folder_name = folder_name),
    "BEAST2 already installed"
  )
})

test_that("install at non-standard location with first version", {

  if (!beautier::is_on_ci()) return()
  if (rappdirs::app_dir()$os == "mac") return()


  folder_name <- tempfile()
  beast_jar_path <- file.path(folder_name, "beast", "lib", "launcher.jar")
  beast2_version <- "2.4.7"
  # Can install ...
  install_beast2(folder_name, beast2_version = beast2_version)
  # ... but getting the version cannot be done
  # expect_equal(beast2_version, get_beast2_version(beast_jar_path)) # nolint code to demo this does not work
})

test_that("install at non-standard location with v2.6.2", {

  if (!beautier::is_on_ci()) return()
  if (rappdirs::app_dir()$os == "mac") return()
  folder_name <- tempfile()
  beast2_version <- "2.6.2"
  install_beast2(folder_name, beast2_version = beast2_version)
  beast2_path <- file.path(folder_name, "beast", "lib", "launcher.jar")
  expect_equal(beast2_version, beastier::get_beast2_version(beast2_path))
})

test_that("install must be silent", {

  if (!beautier::is_on_ci()) return()
  if (rappdirs::app_dir()$os == "mac") return()

  folder_name <- tempfile(pattern = "beastier")
  expect_silent(install_beast2(folder_name = folder_name))
})

test_that("install can be verbose", {

  if (!beautier::is_on_ci()) return()
  if (rappdirs::app_dir()$os == "mac") return()

  folder_name <- tempfile(pattern = "beastier")
  expect_message(
    install_beast2(folder_name = folder_name, verbose = TRUE),
    "Installing BEAST2"
  )
  unlink(folder_name, recursive = TRUE)
})

test_that("install at path with spaces", {

  if (!beautier::is_on_ci()) return()
  if (rappdirs::app_dir()$os == "mac") return()

  folder_name <- file.path(tempfile(), "path with spaces", "even more")
  expect_silent(install_beast2(folder_name = folder_name))
  expect_true(beastier::is_beast2_installed(folder_name = folder_name))
})
