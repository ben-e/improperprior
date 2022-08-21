# Description --------------------------------------------------------------------------------------
# This script builds ggplot2 and quarto themes from templates.

# Resources:
# https://quarto.org/docs/output-formats/html-themes.html#theme-options
# https://davidchall.github.io/jinjar/articles/template-syntax.html

# Setup --------------------------------------------------------------------------------------------
suppressPackageStartupMessages({
  # Data manipulation
  library(dplyr)
  library(glue)
  library(tidyr)
  # FileIO
  library(fs)
  library(readr)
  # Templating
  library(jinjar)
})

# Define themes ------------------------------------------------------------------------------------
# The default minty theme
minty <- read_csv("meta-R/color-themes//minty.csv", show_col_types = F)

# Build ggplot2 theme ------------------------------------------------------------------------------
read_lines("meta-R/templates/ggplot2-template.R") %>% 
  glue_collapse("\n") %>% 
  render(palette = minty) |> 
  write_lines("themes/improper-prior-ggtheme.R")

# Build quarto theme -------------------------------------------------------------------------------
read_lines("meta-R/templates/quarto-template.scss") %>% 
  glue_collapse("\n") %>% 
  render(palette = minty) %>% 
  write_lines("themes/improper-prior.scss")
