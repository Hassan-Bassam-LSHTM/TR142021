## Load packages #################################################################################################
library(deSolve)
library(reshape2)
library(ggplot2)

## Compile and load C code #######################################################################################
if (is.loaded("derivs1")){
  dyn.unload("TB_model.dll") # Unload the dll - do this if currently loaded (only really necessary if recompiling)
}
system("R CMD SHLIB TB_model.c") # Compile
dyn.load("TB_model.dll") # Load dll

# load logcurve function #########################################################################################
source("logcurve.R",local=TRUE)

