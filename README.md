
<!-- README.md is generated from README.Rmd. Please edit that file -->

# retroPal <img src="man/figures/retroPal_hex.png" align="right" width="120" />

<!-- badges: start -->

<!-- badges: end -->

For a good style, retroPal is your new friend when it comes to graph and
data visualization in R.

## Installation

You can install the development version of retroPal like so:

``` r
# install.packages("pak")
pak::pak("harrychown/retroPal")
# or
# install.packages("remotes")
remotes::install_github("harrychown/retroPal")
```

## Example

This is a basic example of the “brown” colourscheme

``` r
library(ggplot2)
library(retroPal)
ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) + geom_bar() + scale_fill_manual(values = get_retro_pal("brown")[c(2,4,6)]) 
```

<img src="man/figures/README-example-1.png" width="100%" />

You can also use the in-built ggplot scales

``` r
library(ggplot2)
library(retroPal)
ggplot(mtcars, aes(factor(carb), fill=factor(cyl))) + geom_bar() + scale_fill_retro("mid4") 
```

<img src="man/figures/README-example2-1.png" width="100%" />

## Colour palettes

### Orange

``` r
library("hues")
swatch(get_retro_pal("orange"))
```

<img src="man/figures/README-orange-1.png" width="100%" />

### Green

``` r
library("hues")
swatch(get_retro_pal("green"))
```

<img src="man/figures/README-green-1.png" width="100%" />

### Blue

``` r
library("hues")
swatch(get_retro_pal("blue"))
```

<img src="man/figures/README-blue-1.png" width="100%" />

### Red

``` r
library("hues")
swatch(get_retro_pal("red"))
```

<img src="man/figures/README-red-1.png" width="100%" />

### Yellow

``` r
library("hues")
swatch(get_retro_pal("yellow"))
```

<img src="man/figures/README-yellow-1.png" width="100%" />

### Purple

``` r
library("hues")
swatch(get_retro_pal("purple"))
```

<img src="man/figures/README-purple-1.png" width="100%" />

### Brown

``` r
library("hues")
swatch(get_retro_pal("brown"))
```

<img src="man/figures/README-brown-1.png" width="100%" />

### Grey

``` r
library("hues")
swatch(get_retro_pal("grey"))
```

<img src="man/figures/README-grey-1.png" width="100%" />

### Mid - 3

``` r
library("hues")
swatch(get_retro_pal("mid3"))
```

<img src="man/figures/README-mid3-1.png" width="100%" />

### Mid - 4

``` r
library("hues")
swatch(get_retro_pal("mid4"))
```

<img src="man/figures/README-mid4-1.png" width="100%" />

### Dark - 5

``` r
library("hues")
swatch(get_retro_pal("dark5"))
```

<img src="man/figures/README-dark5-1.png" width="100%" />

### Dark - 6

``` r
library("hues")
swatch(get_retro_pal("dark6"))
```

<img src="man/figures/README-dark6-1.png" width="100%" />

### Categorical

``` r
library("hues")
swatch(get_retro_pal("categorical"))
```

<img src="man/figures/README-categorical-1.png" width="100%" />
