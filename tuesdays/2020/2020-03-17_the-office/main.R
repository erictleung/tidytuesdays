# Load libraries
library(ggplot2)
library(ggbeeswarm)
library(tidytuesdayR)
library(dplyr)
library(forcats)
library(patchwork)

# Load data
tuesdata <- tidytuesdayR::tt_load('2020-03-17')
office_ratings <- tuesdata$office_ratings

# Point
g_point <-
  office_ratings %>%
  mutate(season = fct_inseq(as.factor(season))) %>%
  ggplot(aes(x = season, y = imdb_rating)) +
  geom_point() +
  labs(title = "Point")

# Jitter
g_jitter <-
  office_ratings %>%
  mutate(season = fct_inseq(as.factor(season))) %>%
  ggplot(aes(x = season, y = imdb_rating)) +
  geom_jitter(width = 0.2) +
  labs(title = "Jitter")

# Beeswam
g_swarm <-
  office_ratings %>%
  mutate(season = fct_inseq(as.factor(season))) %>%
  ggplot(aes(x = season, y = imdb_rating)) +
  geom_beeswarm() +
  labs(title = "Beeswarm")

# Patch together
g_point / g_jitter / g_swarm
ggsave(filename = "beeswarm_test.png", height = 8, width = 6)
