# STRIPS

An R package that loads all other public STRIPS data sets.

## Installation

Installation of this package requires the `devtools` package. 
If not already installed, use 

    install.packages("devtools")
    
To install this package, use 

    devtools::install_github("ISU-STRIPS/STRIPS")

    

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

## Data sets ready to be included

These data sets are ready to be made public pending PI approval:

  -[] jarad/STRIPSHelmers
  -[] jarad/STRIPSLiebman
  -[] jarad/STRIPSONeal
  -[] jarad/STRIPSyield
  -[] jarad/STRIPSSchulte
  -[] jarad/STRIPSKolka
  -[] jarad/STRIPSArbuckle
