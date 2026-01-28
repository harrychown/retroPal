#' Get a retro palette by name
#'
#' @param name Palette name (e.g. "orange_scheme", "combo_dark").
#' @return A character vector of hex colours.
#' @export
get_retro_pal <- function(name) {
  if (!name %in% names(retro_pals)) {
    stop("Unknown palette: ", name, call. = FALSE)
  }
  retro_pals[[name]]
}

#' ggplot2 scale helpers (optional)
#'
#' @param palette Name of palette in `retro_pals`.
#' @param ... Passed to ggplot2 scale functions.
#' @export
scale_fill_retro <- function(palette, ...) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Please install ggplot2 to use scale_fill_retro().", call. = FALSE)
  }
  ggplot2::scale_fill_manual(values = get_retro_pal(palette), ...)
}

#' @rdname scale_fill_retro
#' @export
scale_colour_retro <- function(palette, ...) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Please install ggplot2 to use scale_colour_retro().", call. = FALSE)
  }
  ggplot2::scale_colour_manual(values = get_retro_pal(palette), ...)
}
