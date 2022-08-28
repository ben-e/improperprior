ip_pal <- function() {
  palette <- c(
    "#B7A0CD",
    "#F5B6D0",
    "#E9C062",
    "#C0FFDE",
    "#96CBFE",
    "#5A5475",
    "#E3837D",
    "#FAF58A",
    "#f8f9fa",
    "#aaaaaa",
    "#5a5a5a",
    "#343a40",
    "#FFFFFF"
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
  discrete_scale("fill", "ip", ip_pal(), ...)
}

# Get palette entries with roles as a data frame
palette_df <- data.frame(
  primary = "#B7A0CD",
  secondary = "#F5B6D0",
  none = "#E9C062",
  success = "#C0FFDE",
  none = "#96CBFE",
  none = "#5A5475",
  danger = "#E3837D",
  warning = "#FAF58A",
  light = "#f8f9fa",
  gray = "#aaaaaa",
  text_color = "#5a5a5a",
  dark = "#343a40",
  background = "#FFFFFF"
)

# Build a ggplot2 theme
primary_rgb <- col2rgb(palette_df$primary)/255
primary_lite <- rgb(primary_rgb[1], primary_rgb[2], primary_rgb[3], 0.1)

grid_color <- col2rgb(palette_df$text_color)/255
grid_color <- rgb(grid_color[1], grid_color[2], grid_color[3], 0.3)

theme_ip <- function(base_size = 12, base_family = "Montserrat") {
  # is it better to set the background to transparent, or to match the theme?
  theme_minimal(base_size = base_size, base_family = base_family) +
    theme(text = element_text(colour = palette_df$text_color),
          legend.position = "bottom",
          panel.background = element_rect(fill = primary_lite, colour = NA),
          plot.background = element_rect(fill = "transparent", colour = NA),
          panel.grid.major = element_line(colour = grid_color, size = 1/3),
          panel.grid.minor = element_line(colour = grid_color, size = 1/6))
}
