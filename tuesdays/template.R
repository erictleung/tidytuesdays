#' ---
#' title: "Title"
#' author: "Eric Leung"
#' date: "2021-01-01"
#' output: html_document
#' ---

#' ## Load libraries
#+setup, warning=FALSE, message=FALSE
# Load libraries ----------------------------------------------------------

# Utilities
library(tidytuesdayR)

# Data wrangling
library(dplyr)

# plotting libraries
library(ggplot2)

# Summary tables
library(gt)
#+

#' **Last updated**: `r date()`


#' ## Load data
#+load_data
# Load data ---------------------------------------------------------------

tuesdata <- tidytuesdayR::tt_load("2020-01-01")

#+