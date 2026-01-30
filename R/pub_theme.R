#' Publication-ready ggplot2 theme
#'
#' A compact, publication-focused ggplot2 theme with small text sizes,
#' optional axis labels, rotation, italics, and grid control.
#'
#' @param x_axis_labels Logical. Should x-axis text labels be shown?
#' @param y_axis_labels Logical. Should y-axis text labels be shown?
#' @param x_axis_rotation Numeric. Rotation angle (in degrees) for x-axis labels.
#' @param x_axis_italic Logical. Should x-axis labels be italicised?
#' @param y_axis_italic Logical. Should y-axis labels be italicised?
#' @param drop_grid Logical. Remove grid lines and axis lines entirely?
#' @param font_family Character. Font family used for plot text. Defaults to
#'   \code{"arial"}. For portability, we recommend \code{"sans"}. If you set a specific font
#'   (e.g., \code{"arial"}), ensure it is available/registered on your system
#'   for the graphics device you are using (especially when exporting to PDF).
#'
#' @return A ggplot2 \code{theme} object.
#'
#' @details
#' This theme is designed for compact figures in reports and publications.
#' It uses small font sizes, a white background, dashed grid lines, and
#' provides fine control over axis label appearance.
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(factor(cyl), mpg)) +
#'   geom_boxplot() +
#'   pub_theme(x_axis_rotation = 45)
#'
#' @export
pub_theme <- function(
    x_axis_labels = FALSE,
    y_axis_labels = TRUE,
    x_axis_rotation = 0,
    x_axis_italic = FALSE,
    y_axis_italic = FALSE,
    drop_grid = FALSE,
    font_family = "arial"
) {

  t <- ggplot2::theme(
    plot.background  = ggplot2::element_rect(fill = "white", colour = NA_character_),
    panel.background = ggplot2::element_rect(fill = "white", colour = NA_character_),
    panel.border     = ggplot2::element_rect(fill = "white", colour = NA_character_),

    axis.title.y = ggtext::element_markdown(size = 6, colour = "black", family = font_family),
    axis.text.y  = ggplot2::element_text(size = 5, colour = "black", family = font_family),
    axis.title.x = ggtext::element_markdown(size = 6, colour = "black", family = font_family),

    legend.title = ggplot2::element_text(size = 6, colour = "black", family = font_family),
    legend.text  = ggplot2::element_text(size = 5, colour = "black", family = font_family),
    strip.text   = ggplot2::element_text(size = 6, colour = "black", family = font_family),

    panel.grid.major = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(linewidth = 0.1, colour = "black", linetype = "dashed"),
    panel.grid.major.x = ggplot2::element_line(linewidth = 0.1, colour = "black", linetype = "dashed"),

    axis.line.x = ggplot2::element_line(colour = "black", linewidth = 0.5),
    axis.line.y = ggplot2::element_line(colour = "black", linewidth = 0.5)
  )

  if (x_axis_labels) {
    vjust <- if (x_axis_rotation == 0) 0.5 else 1
    hjust <- if (x_axis_rotation == 0) 0.5 else 1

    t <- t + ggplot2::theme(
      axis.text.x = ggplot2::element_text(
        size = 5,
        angle = x_axis_rotation,
        vjust = vjust,
        hjust = hjust,
        colour = "black",
        family = font_family
      )
    )
  }

  if (!y_axis_labels) {
    t <- t + ggplot2::theme(axis.text.y = ggplot2::element_text(size = 0))
  }

  if (x_axis_italic) {
    t <- t + ggplot2::theme(axis.text.x = ggplot2::element_text(face = "italic"))
  }

  if (y_axis_italic) {
    t <- t + ggplot2::theme(axis.text.y = ggplot2::element_text(face = "italic"))
  }

  if (drop_grid) {
    t <- t + ggplot2::theme(
      panel.grid.major.y = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      axis.line.x = ggplot2::element_blank(),
      axis.line.y = ggplot2::element_blank()
    )
  }

  t
}
