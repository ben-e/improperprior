# Description --------------------------------------------------------------------------------------
# Generate favicon.

# Setup --------------------------------------------------------------------------------------------
suppressPackageStartupMessages({
  # Data manipulation
  library(dplyr)
  library(tidyr)
  # Visualization
  library(ggplot2)
  library(svglite)
  source("themes/improper-prior-ggtheme.R")
})

# Favicon ------------------------------------------------------------------------------------------
fvi <- tibble(
  x = seq(0, 1, 0.01),
  y1 = dbeta(x, 5, 5),
  y2 = dbeta(x, 5, 2),
  y3 = dbeta(x, 2, 5),
) %>% 
  pivot_longer(y1:y3) %>% 
  ggplot(aes(x, value, colour = name)) +
  geom_line(size = 0.25) +
  scale_color_ip() +
  theme_void() +
  theme(legend.position = "none")

ggsave("images/favicon.png", plot = fvi, width = 32, height = 32, units = "px",
       bg = "transparent")
