library(shiny)
library(tidyverse)

derby <- read_csv("data/derbyplus2.csv")

condition_choices <- derby |>
  pull(condition) |>
  unique() |>
  sort()

