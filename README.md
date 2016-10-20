# STRIPS

A repository for STRIPS meta data and loading of all other public STRIPS data sets.

## Installation

Installation of this package requires the `devtools` package. 
If not already installed, use 

    install.packages("devtools")
    
To install this package, use 

    devtools::install_github("ISU-STRIPS/STRIPS")

    

## Adding new publicly available R data packages

The newly available data should be in an R package, e.g. 
[STRIPSMeta](https://github.com/ISU-STRIPS/STRIPSMeta). To have that data 
immediately available to users, you should 

  1. Add the package to DESCRIPTION in both the Imports: and Remotes: sections.
  1. In R/STRIPS.R documentation, add the package to 
    - @import
    - @section STRIPS packages:
    - @seealso
