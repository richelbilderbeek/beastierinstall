#!/bin/bash
#
# Installs BEAST2 using the R code in the 'beastier' package
#
# Because the R code in the package uses 'beastier::' in calling
# its functions, this scipt 
#
# Usage:
#
#  ./scripts/install_beast2.sh
#
#
cat R/install_beast2.R > install_beast2.R
cat R/check_os.R >> install_beast2.R
cat R/get_default_beast2_download_url.R >> install_beast2.R
cat R/get_default_beast2_version.R >> install_beast2.R
echo "install_beast2()" >> install_beast2.R
sed -i'.orginal' "s/beastier:://g" install_beast2.R
cat install_beast2.R
Rscript install_beast2.R
