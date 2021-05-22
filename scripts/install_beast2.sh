#!/bin/bash
#
# Installs BEAST2 using the R code in the 'beastierinstall' package
#
# Because the R code in the package uses 'beastierinstall::' in calling
# its functions, this scipt 
#
# Usage:
#
#  ./scripts/install_beast2.sh
#
#
cat R/*.R > install_beast2.R
echo "install_beast2()" >> install_beast2.R
sed -i'.orginal' "s/beastierinstall:://g" install_beast2.R
cat install_beast2.R
Rscript install_beast2.R
