# Description ------------------------------------------------------------------
# Generate favicon, icon, and other "branding" images.
# Ben Ewing on 2021-07-20

# Setup ------------------------------------------------------------------------
# Data manipulation
library(dplyr)
library(tidyr)
# Visualization
library(ggplot2)
library(ggcute)
library(svglite)

# Favicon ----------------------------------------------------------------------
fvi <- tibble(
  x = seq(0, 1, 0.01),
  y1 = dbeta(x, 5, 5),
  y2 = dbeta(x, 5, 2),
  y3 = dbeta(x, 2, 5),
) %>% 
  pivot_longer(y1:y3) %>% 
  ggplot(aes(x, value, colour = name)) +
  geom_line(size = 0.25) +
  scale_colour_fairyfloss() +
  theme_void() +
  theme(legend.position = "none")

ggsave("images/favicon.png", plot = fvi, width = 32, height = 32, units = "px",
       bg = "transparent")

logo <- fvi +
  geom_line(size = 3)
ggsave("images/logo.png", plot = logo, width = 1024, height = 256, units = "px", 
       bg = "transparent")

# Banner -----------------------------------------------------------------------
# fvi_mean <- 0
# fvi_sd <- 0.25
# + rnorm(fvi_n, fvi_mean, fvi_sd)
# mutate(distance = case_when(
#   name == "y1" ~ abs(value - sin(x)),
#   name == "y2" ~ abs(value - cos(x)),
#   name == "y3" ~ abs(value - cos(x + pi))
# ))