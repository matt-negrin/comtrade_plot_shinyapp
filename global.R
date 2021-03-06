library(shiny)
library(plotly)
library(dplyr)

library(devtools)
devtools::install_github("ChrisMuir/comtradr")
library(comtradr)

# Download the countries table and commodities table. Server.R will use both of 
# these data frames, ui.R will use a number of vectors taken from these data 
# frames.
countrydf <- comtradr::ct_countries_table()
commoditydf <- comtradr::ct_commodities_table(type = "HS")
