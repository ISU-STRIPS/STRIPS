# STRIPS

An R package that loads all other public STRIPS data sets.

## Installation

Installation of this package requires the `devtools` package. 
If not already installed, use 

    install.packages("devtools")
    
To install this package, use 

    devtools::install_github("ISU-STRIPS/STRIPS")


## R packages included by this package

A number of other R packages are automatically loaded when this R package is
loaded. 
This packages can all be found on the <https://github.com/ISU-STRIPS/> 
organization page.

  - [STRIPSArbuckle](https://github.com/ISU-STRIPS/STRIPSArbuckle)
  - [STRIPSHelmers](https://github.com/ISU-STRIPS/STRIPSHelmers)
  - [STRIPSHladik](https://github.com/ISU-STRIPS/STRIPSHladik)
  - [STRIPSKolka](https://github.com/ISU-STRIPS/STRIPSKolka/)
  - [STRIPSLiebman](https://github.com/ISU-STRIPS/STRIPSLiebman)
  - [STRIPSMeta](https://github.com/ISU-STRIPS/STRIPSMeta)
  - [STRIPSONeal](https://github.com/ISU-STRIPS/STRIPSONeal)
  - [STRIPSSchulte](https://github.com/ISU-STRIPS/STRIPSSchulte)
  - [STRIPSyield](https://github.com/ISU-STRIPS/STRIPSyield)


## Adding new publicly available R data packages

The newly available data should be in an R package, e.g. 
[STRIPSMeta](https://github.com/ISU-STRIPS/STRIPSMeta). 
Ideally, this package is a git repository under the 
[ISU-STRIPS organization](https://github.com/ISU-STRIPS) on 
[github](https://github.com/).

To have that data immediately available to users, please

  1. Add the package to DESCRIPTION in both the Imports: and Remotes: sections.
  1. In R/STRIPS.R documentation, add the package to 
    - @import
    - @section STRIPS packages: (as a link)
    - @seealso (as a link)

