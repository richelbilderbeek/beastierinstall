# beastierinstall

Branch   |[![GitHub Actions logo](man/figures/GitHubActions.png)](https://github.com/richelbilderbeek/beastierinstall/actions)|[![Codecov logo](man/figures/Codecov.png)](https://www.codecov.io)
---------|--------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
`master` |![R-CMD-check](https://github.com/richelbilderbeek/beastierinstall/workflows/R-CMD-check/badge.svg?branch=master)   |[![codecov.io](https://codecov.io/github/richelbilderbeek/beastierinstall/coverage.svg?branch=master)](https://codecov.io/github/richelbilderbeek/beastierinstall/branch/master)
`develop`|![R-CMD-check](https://github.com/richelbilderbeek/beastierinstall/workflows/R-CMD-check/badge.svg?branch=develop)  |[![codecov.io](https://codecov.io/github/richelbilderbeek/beastierinstall/coverage.svg?branch=develop)](https://codecov.io/github/richelbilderbeek/beastierinstall/branch/develop)

`beastierinstall` is an R package to install and uninstall BEAST2.

`beastierinstall` is a non-CRAN extension of [`beastier`](https://github.com/richelbilderbeek/beastier),
a CRAN package to run BEAST2.

## Example

```
library(beastierinstall)
install_beast2()
uninstall_beast2()
```
