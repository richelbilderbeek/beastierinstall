# beastierinstall

Branch   |[GitHub Actions](https://github.com/ropensci/beastierinstall/actions)                                     |[![Travis CI logo](man/figures/TravisCI.png)](https://travis-ci.org)                                                  |[![Codecov logo](man/figures/Codecov.png)](https://www.codecov.io)
---------|---------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------
`master` |![R-CMD-check](https://github.com/ropensci/beastierinstall/workflows/R-CMD-check/badge.svg?branch=master) |[![Build Status](https://travis-ci.org/ropensci/beastierinstall.svg?branch=master)](https://travis-ci.org/ropensci/beastierinstall) |[![codecov.io](https://codecov.io/github/ropensci/beastierinstall/coverage.svg?branch=master)](https://codecov.io/github/ropensci/beastierinstall/branch/master)
`develop`|![R-CMD-check](https://github.com/ropensci/beastierinstall/workflows/R-CMD-check/badge.svg?branch=develop)|[![Build Status](https://travis-ci.org/ropensci/beastierinstall.svg?branch=develop)](https://travis-ci.org/ropensci/beastierinstall)|[![codecov.io](https://codecov.io/github/ropensci/beastierinstall/coverage.svg?branch=develop)](https://codecov.io/github/ropensci/beastierinstall/branch/develop)

`beastierinstall` is an R package to install and uninstall BEAST2.

`beastierinstall` is a non-CRAN extension of [`beastier`](https://github.com/ropensci/beastier),
a CRAN package to run BEAST2.

## Example

```
library(beastierinstall)
install_beast2()
uninstall_beast2()
```

