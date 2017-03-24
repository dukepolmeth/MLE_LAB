# Start with a clean workspace
rm(list=ls())

# Function to load packages
loadPkg <- function(toLoad){
  for(lib in toLoad){
    if(! lib %in% installed.packages()[,1])
    { install.packages(lib, repos='http://cran.rstudio.com/') }
    suppressMessages( library(lib, character.only=TRUE) ) }
}

# Load libraries
pkgs <- c("ggplot2", 'lmtest', 'car', 'gap', 'sandwich', 'reshape2', 'foreign', 'MASS', 'boot', 
          'separationplot', 'WDI', 'countrycode', 'RColorBrewer', 'cshapes', 'ape', 'grid', 
          'spdep', 'magrittr', 'pscl', 'rms', 'nnet', 'mlogit', 'AER', 'Amelia', 'sbgcop', 'reporttools',
          'mice', 'missForest', 'VIM')
loadPkg(pkgs)

# Set a theme for gg
theme_set(theme_bw())

# Functions that I use frequently
char <- function(x){ as.character(x) }
num <- function(x){ as.numeric(char(x)) }

## Relevant paths
if((Sys.info()['user']=='aob5' | Sys.info()['user']=='Andy')){
  labPath <- paste0(path.expand("~"), "MLE_LAB/Lab 10/")
}