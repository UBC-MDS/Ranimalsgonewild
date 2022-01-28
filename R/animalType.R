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
animalType <- function(species, text){
  words <- gsub('[[:punct:] ]+','',text) |>
    strsplit(' ') |>
    unlist()
  
  iq = "smart"
  avg <- 0
  
  for (w in words) {avg <- avg + length(w)}
  avg <- avg/length(words)
  
  if (avg < 5) {iq = "dumb"}
  
  filename <- paste0("./imgs/",iq, "_", species, ".jpeg")
  filename
  
  plot(load.image(filename))
}
