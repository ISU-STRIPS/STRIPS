# STRIPS

A repository for STRIPS meta data and loading of all other public STRIPS data sets.

## Adding new publicly available R data packages

The newly available data should be in an R package, e.g. 
[STRIPSMeta](https://github.com/ISU-STRIPS/STRIPSMeta). To have that data 
immediately available to users, you should 

  1. Add the package to DESCRIPTION in both the Depends: and Remotes: sections.
  2. Add the package to @import in the R/STRIPS/R documentation. 
  3. Add the datasets to @section STRIPS data sets:
  4. Add a link to the package in @seealso
