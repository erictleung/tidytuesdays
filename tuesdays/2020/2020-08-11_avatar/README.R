#' ---
#' title: "Tuesday: 2020-08-11"
#' output: md_document
#' ---

# Load libraries ----------------------------------------------------------

# Utilities
library(tidytuesdayR)

# Data wrangling
library(dplyr)

# plotting libraries
library(ggplot2)

# Summary tables
library(gt)


# Load data ---------------------------------------------------------------

tuesdata <- tidytuesdayR::tt_load("2020-08-11")
avatar <- tuesdata$avatar


# Summary tables ----------------------------------------------------------

# Summarize number of elements per book chapter
avatar %>%
  select(-c(full_text, character_words, writer)) %>%
  group_by(book_num) %>%
  summarize(Lines = n()) %>%
  rename(`Book Number` = book_num) %>%
  gt() %>%
  tab_header(title = "Avatar the Last Airbender", subtitle = "Lines per Book")


# Exploration and engineering ---------------------------------------------

#' TODO


# Data visualizations and analysis ----------------------------------------

#' TODO
