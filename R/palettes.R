#' Retro colour palettes
#'
#' A collection of retro-inspired colour palettes.
#'
#' @format A named list of character vectors (hex colours).
#' @export
orange <- c( "#ffebcc", "#ffcc80", "#ffad33", "#e68a00","#995c00", "#663d00")
green <- c("#eef2e6", "#cfd8b6","#aabf73", "#7f9933", "#5c6e26", "#3f4d1a")
blue <- c("#e6f0f2", "#b8d4d8", "#7fb0b8", "#4d8a94","#2f5f66", "#1f4046")
red <- c("#f5e6e1", "#e2b8aa","#c97a63", "#a34f3b","#73362a", "#4d241c")
yellow <- c("#fff3d6", "#f2d28a","#d9b24c", "#b38b1f","#806314", "#4d3b0c")
purple <- c("#f1eaf2", "#d1bcd6","#a184ad", "#75507f","#53385c", "#36243d")
brown <- c("#f2ebe3", "#d6c3ad","#b08b6b", "#8a6344","#5f432e", "#3d2b1e")
grey <- c("#f2f2ef", "#d6d6cf","#b3b3aa", "#8c8c84","#5f5f59", "#3d3d39")
low1 <- c(orange[1], green[3], blue[3], red[3], yellow[3], purple[3], brown[3], grey[3])

mid3 <- c(orange[3], green[3], blue[3], red[3], yellow[3], purple[3], brown[3], grey[3])
mid4 <- c(orange[4], green[4], blue[4], red[4], yellow[4], purple[4], brown[4], grey[4])
dark5 <- c(orange[5], green[5], blue[5], red[5], yellow[5], purple[5], brown[5], grey[5])
dark6 <- c(orange[6], green[6], blue[6], red[6], yellow[6], purple[6], brown[6], grey[6])

retro_pals <- list(
  orange = orange,
  green = green,
  blue = blue,
  red = red,
  yellow = yellow,
  purple = purple,
  brown = brown,
  grey = grey,
  mid3 = mid3,
  mid4 = mid4,
  dark5 = dark5,
  dark6 = dark6,
  categorical = c(mid3, mid4, dark5, dark6)
)

