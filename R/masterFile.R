# Include Librarys
library(gapminder)
library(tidyverse)
library(glue)

#Include R-Files
source("R/plotCountry.R")
source("R/getDeltaLE.R")
source("R/printLE.R")

# Include Data
data("gapminder")


# Function Calls
#Plots
plotCountry("Germany")

#Life Expectations
printLE("Afghanistan", 2007)
printLE("Afghanistan", 1952)

#Life expectation Delta
getDeltaLE("France")
