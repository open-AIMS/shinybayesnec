
<!-- README.md is generated from README.Rmd. Please edit that file -->

# shinybayesnec

<!-- badges: start -->

[![Apache
license](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
<!-- badges: end -->

`bayesnecsdtools` is a Shiny application for fitting concentration
response curves and estimating no effect concentrations using
[`bayesnec`](https://github.com/open-aims/bayesnec).

## Utilization

The most recent version is available online at
<https://open-aims.shinyapps.io/bayesnec/>.

To install the development version from
[GitHub](https://github.com/open-aims/shinybayesnec) and deploy locally
use

``` r
# install.packages("devtools")
devtools::install_github("open-aims/shinybayesnec")
library(shinybayesnec)
shinybayesnec::run_app()
```

## Features

In addition to being a Graphical User Interface to the core
functionality in the [`bayesnec`](https://github.com/open-aims/bayesnec)
package, `shinybayesnec` also provides

-   generation of R scripts for reproducibility;
-   customization and downloads of plots and tables

## Assistance

To report bugs/issues/feature requests, please file an
[issue](https://github.com/open-aims/shinybayesnec/issues/).

## Deploying to shinyapps.io

### Manually

Run the `deploy-app.R` script in the scripts directory (after setting
the account argument to be your `shinyapps.io` account name).

### Automatically

If your `shinyapps.io` account name is the same as your GitHub account
name simply make a commit in the master or dev branch and include
`deploy app` in the message (after setting `SHINYAPPS_TOKEN` and
`SHINYAPPS_SECRET` in your repository GitHub secrets). This triggers the
`deploy-app.yml` GitHub action.

## License

The code is released under the Apache License 2.0

Copyright 2021 Province of British Columbia

Licensed under the Apache License, Version 2.0 (the “LICENSE”); you may
not use this file except in compliance with the License. You may obtain
a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

------------------------------------------------------------------------

<a rel="LICENSE" href="https://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence"
style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br /><span
xmlns:dct="http://purl.org/dc/terms/"
property="dct:title">bayesnec</span> by <span
xmlns:cc="http://creativecommons.org/ns#"
property="cc:attributionName">the Province of British Columbia </span>
is licensed under a
<a rel="LICENSE" href="https://creativecommons.org/licenses/by/4.0/">
Creative Commons Attribution 4.0 International License</a>.
