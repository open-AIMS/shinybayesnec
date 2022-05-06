plot_models <- function(x, ylab) {
  gp <- bayesnec::autoplot(x, all_models = TRUE) + ylab(ylab)

  gp
}

plot_predictions <- function(x, title, xmax, palette, legend_colour, legend_shape) {
  gp <- bayesnec::autoplot(x) +
    ggplot2::ggtitle(title) +
    ggplot2::theme(
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      panel.background = ggplot2::element_rect(fill = NA, colour = "black"),
      axis.text = ggplot2::element_text(color = "black"),
      legend.key = ggplot2::element_rect(fill = NA, colour = NA)
    ) +
    ggplot2::expand_limits(x = xmax) +
    ggplot2::scale_color_brewer(palette = palette, name = legend_colour) +
    ggplot2::scale_shape(name = legend_shape)

  gp
}
