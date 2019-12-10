# Include Librarys
library(gapminder)
library(tidyverse)
library(glue)

#Include R-Files

# Walk if you don't want an output otherwise map

list.files("./R/", full.names = TRUE) %>% 
  walk(source)

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
