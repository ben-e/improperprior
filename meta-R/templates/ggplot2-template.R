ip_pal <- function() {
  palette <- c(
    {% for item in palette -%}
    "{{ item.hex }}"{% if not loop.is_last -%},{% endif %}
    {% endfor -%}
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
{% for item in palette -%}
{% if true %}  {% endif %}{{ item.role }} = "{{ item.hex }}"{% if not loop.is_last %},{% endif %}
{% endfor -%}
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
