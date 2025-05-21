# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, music!")
}
hello()

#install.packages("roxygen2")
library(roxygen2)

#' Add two numbers
#' @param a
#' @param b
#' @details adds a to b.
#' @examples
#' add_a_and_b(3, 5)
#' add_a_and_b(-1, 1)
add_a_and_b <- function(a,b){
  a + b
}

#install.packages("stats")
library(stats)

library(roxygen2)
#roxygen2::roxygenize()

#' Generate a Random Playlist Length
#'
#' This function generates a random integer representing the number of songs in a playlist.
#'
#' @param mean The average number of songs you want (default = 20).
#' @param sd The standard deviation (default = 5).
#' @return An integer for playlist length.
#' @importFrom stats rnorm
#' @export
#' @examples
#' random_playlist_length()
#' random_playlist_length(mean = 30)
#' random_playlist_length(mean = 25, sd = 10)
random_playlist_length <- function(mean = 20, sd = 5) {
  round(stats::rnorm(1, mean, sd))
}



