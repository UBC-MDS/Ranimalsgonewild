#' Analyzes text based on average word length and returns an animal picture representing language complexity.
#'
#' @param text A string of characters to be analyzed
#' @param species A string representing species, must be one of ["Duck", "Monkey", "Giraffe", "Whale"]
#'
#' @return A jpeg of an animal
#' @export
#'
#' @examples
#' text <- "I like pie"
#' animal_rep <- animalType(animalClassifier(text), text)
#'
#' text <- "Pie's abundantly awesome"
#' species <- "Duck"
#' animal_rep <- animalType(species, text)

library(imager)
library(testthat)
animalType <- function(species, text){
  if (!is.character(species)) {
    stop("Species is not a string")
  }

  if (!is.character(text)) {
    stop("Text is not a string")
  }
  words <- gsub('[[:punct:]]+','',text)

  iq = "smart"
  avg <- 0

  for (w in words) {avg <- avg + nchar(w)}
  avg <- avg/length(strsplit(words, " ")[[1]])

  if (avg < 5) {iq = "dumb"}

  if (endsWith(getwd(), "testthat")){
    dir <- dirname(getwd())
    dir <- dirname(dir)
    filename <- paste(dir, "/imgs/",iq, "_", species, ".jpeg", sep = "")
    plot(load.image(filename))
  }
  else{
    filename <- paste0("./imgs/",iq, "_", species, ".jpeg")
  }
  plot(load.image(filename))
  paste0(iq,"_", species)
}
