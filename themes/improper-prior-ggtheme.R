ip_pal <- function() {
  palette <- c(
    "#78c2ad",
    "#f3969a",
    "#ffce67",
    "#ff7851",
    "#6cc3d5",
    "#56cc9d",
    "#f8f9fa",
    "#aaaaaa",
    "#5a5a5a",
    "#343a40",
    "#ffffff",
    "#6610f2",
    "#6f42c1",
    "#e83e8c",
    "#fd7e14",
    "#20c997"
    )
  
  f <- function(n) {
    palette
  }
  
  attr(f, "max_n") <- length(palette)
  f
}

scale_colour_ip <- function( ...) {
  discrete_scale("colour", "ip", ip_pal(), ...)
}
scale_color_ip <- scale_colour_ip

scale_fill_ip <- function(...) {
  discrete_scale("colour", "ip", ip_pal(), ...)
}

# Get palette entries with roles as a data frame
palette_df <- data.frame(
  primary = "#78c2ad",
  secondary = "#f3969a",
  warning = "#ffce67",
  danger = "#ff7851",
  info = "#6cc3d5",
  success = "#56cc9d",
  light = "#f8f9fa",
  gray = "#aaaaaa",
  text_color = "#5a5a5a",
  dark = "#343a40",
  background = "#ffffff",
  none = "#6610f2",
  none = "#6f42c1",
  none = "#e83e8c",
  none = "#fd7e14",
  none = "#20c997"
)

# Build a ggplot2 theme
primary_rgb <- col2rgb(palette_df$primary)/255
primary_lite <- rgb(primary_rgb[1], primary_rgb[2], primary_rgb[3], 0.1)

theme_ip <- function(base_size = 12, base_family = "Montserrat") {
  # is it better to set the background to transparent, or to match the theme?
  theme_minimal(base_size = base_size, base_family = base_family) +
    theme(text = element_text(colour = palette_df$text_color),
          legend.position = "bottom",
          panel.background = element_rect(fill = primary_lite, colour = NA),
          plot.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.major = element_line(colour = palette_df$text_color, size = 1/3),
          panel.grid.minor = element_line(colour = palette_df$text_color, size = 1/6))
}
