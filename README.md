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
<<<<<<< HEAD
Ideally, this package is a git repository under the 
=======
Ideally, this package is git repository is under the 
>>>>>>> f3dde915e6086e9ca06ac3e958ad723b89854312
[ISU-STRIPS organization](https://github.com/ISU-STRIPS) on 
[github](https://github.com/).

To have that data immediately available to users, please

  1. Add the package to DESCRIPTION in both the Imports: and Remotes: sections.
  1. In R/STRIPS.R documentation, add the package to 
    - @import
    - @section STRIPS packages:
    - @seealso
