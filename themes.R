#############################################
# Custom ggplot2 Themes with Google Fonts
# Author: Your Name
# Date: 2025-05-07
# Purpose: Define styled themes with showtext
#############################################

library(ggplot2)
library(showtext)

# ---- 0. INIT SHOWTEXT & GOOGLE FONTS ----
showtext_auto(enable = TRUE)
showtext_opts(dpi = 300)

font_add_google("Anton", "anton")
font_add_google("Quicksand", "quicksand")
font_add_google("Fira Sans", "firasans")
font_add_google("Baloo 2", "baloo")

# ---- 1. NEO-BRUTALIST THEME ----
theme_neo_brutalist <- function(base_size = 14) {
  theme_minimal(base_size = base_size, base_family = "anton") %+replace%
    theme(
      panel.background = element_rect(fill = "#fdf6e3", colour = NA),
      plot.background = element_rect(fill = "#fdf6e3", colour = NA),
      panel.grid.major = element_line(color = "#000000", size = 0.7),
      panel.grid.minor = element_blank(),
      axis.line = element_line(color = "black", size = 0.8),
      axis.ticks = element_line(color = "black", size = 0.6),
      plot.title = element_text(face = "bold", size = base_size * 1.4, hjust = 0),
      plot.subtitle = element_text(size = base_size, hjust = 0),
      legend.position = "bottom",
      strip.background = element_rect(fill = "#000000", color = NA),
      strip.text = element_text(color = "#ffffff", face = "bold")
    )
}

# ---- 2. MINIMAL PASTEL THEME ----
theme_pastel_minimal <- function(base_size = 14) {
  theme_light(base_size = base_size, base_family = "quicksand") %+replace%
    theme(
      panel.background = element_rect(fill = "#fffdf9", colour = NA),
      plot.background = element_rect(fill = "#fffdf9", colour = NA),
      panel.grid.major = element_line(color = "#eaeaea"),
      axis.title = element_text(color = "#5f5f5f"),
      axis.text = element_text(color = "#5f5f5f"),
      plot.title = element_text(face = "bold", size = base_size * 1.2),
      plot.subtitle = element_text(size = base_size, color = "#888888"),
      legend.background = element_blank(),
      legend.key = element_blank()
    )
}

# ---- 3. DARK DASHBOARD THEME ----
theme_dark_dashboard <- function(base_size = 14) {
  theme_minimal(base_size = base_size, base_family = "firasans") %+replace%
    theme(
      panel.background = element_rect(fill = "#1e1e1e", colour = NA),
      plot.background = element_rect(fill = "#1e1e1e", colour = NA),
      panel.grid.major = element_line(color = "#333333"),
      axis.text = element_text(color = "#cccccc"),
      axis.title = element_text(color = "#eeeeee"),
      plot.title = element_text(color = "white", face = "bold", size = base_size * 1.2),
      plot.subtitle = element_text(color = "#cccccc", size = base_size),
      legend.background = element_rect(fill = "#1e1e1e"),
      legend.key = element_rect(fill = "#1e1e1e"),
      strip.background = element_rect(fill = "#333333"),
      strip.text = element_text(color = "#ffffff", face = "bold")
    )
}

# ---- 4. FLAT COLORFUL THEME ----
theme_flat_fun <- function(base_size = 14) {
  theme_minimal(base_size = base_size, base_family = "baloo") %+replace%
    theme(
      panel.grid.major = element_line(color = "#dddddd"),
      panel.background = element_rect(fill = "#f0f9ff"),
      plot.background = element_rect(fill = "#f0f9ff"),
      plot.title = element_text(face = "bold", size = base_size * 1.3, color = "#0d3b66"),
      plot.subtitle = element_text(color = "#3d5a80"),
      axis.title = element_text(color = "#3d5a80"),
      axis.text = element_text(color = "#293241"),
      strip.background = element_rect(fill = "#ee6c4d"),
      strip.text = element_text(color = "white", face = "bold"),
      legend.position = "right"
    )
}

# ---- END MESSAGE ----
cat("✅ ggplot themes with Google Fonts loaded using showtext.\n")
