#Load files

#parameters
source("cgem.nml.R")
source("listplot.R")

#data
rates <- readRDS("rates.rds")
growth <- readRDS("growth.rds")
hydro <- readRDS("hydro.rds")
light <- readRDS("light.rds")
time <- readRDS("time.rds")
cgem <- readRDS("cgem.rds")
