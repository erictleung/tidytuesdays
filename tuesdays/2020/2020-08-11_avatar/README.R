#' ---
#' title: "Avatar the Last Airbender 2020-08-11"
#' author: "Eric Leung"
#' date: "2020-09-29"
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

tuesdata <- tidytuesdayR::tt_load("2020-08-11")
avatar <- tuesdata$avatar

#+


#' ## Summary tables
#+summary_tables
# Summary tables ----------------------------------------------------------

# Summarize number of elements per book chapter
avatar %>%
  select(-c(full_text, character_words, writer)) %>%
  group_by(book_num) %>%
  summarize(Lines = n()) %>%
  rename(`Book Number` = book_num) %>%
  gt() %>%
  tab_header(title = "Avatar the Last Airbender", subtitle = "Lines per Book")

#+


#' ## Exploration and engineering
#+eda
# Exploration and engineering ---------------------------------------------

#+

#' TODO


#' ## Data visualizations and analysis
#+dataviz
# Data visualizations and analysis ----------------------------------------

#+

#' TODO
