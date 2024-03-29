#' Upgrade BEAST2.
#'
#' Will \link{stop} if BEAST2 is not installed
#' @inheritParams default_params_doc
#' @param folder_name name of the folder where the BEAST2 files will
#'   be put.
#'   The name of the BEAST2 binary file will be at
#'   \code{[folder_name]/beast/bin/beast}
#'   The name of the BEAST2 jar file will be at
#'   \code{[folder_name]/beast/lib/launcher.jar}
#' @author Richèl J.C. Bilderbeek
#' @export
upgrade_beast2 <- function(
  folder_name = rappdirs::user_data_dir(),
  os = rappdirs::app_dir()$os
) {
  if (!beastier::is_beast2_installed(folder_name = folder_name, os = os)) {
    stop(
      "BEAST2 is not installed, so cannot upgrade.\n",
      "\n",
      "Tip: use 'beastierinstall::install_beast2()'"
    )
  }
  beastierinstall::uninstall_beast2()
  beastierinstall::install_beast2()
}
