#' Classify the input text as an animal
#' based on the proportion of unique words
#'
#' @param text String Character
#'
#' @return A character, the classified animal type
#' @export
#'
#' @examples
#' library(tm)
#' animalClassifier("I just caught a pikachu!")
#'
animalClassifier <- function(text){
  output <- NULL
  ratio <- NULL

  animal_list <- c("Duck", "Monkey", "Giraffe", "Whale")
  cleaned_text <- gsub('[[:punct:]]+','',text) %>%
    strsplit(' ') %>%
    unlist()

  if(!is.character(text)){
    stop("Inappropriate input data type! Text should be character")
  }

  if(length(text) != 1){
    stop("Incorrect amount of input values! Expecting only 1 input text string.")
  }

    total_words <- length(cleaned_text)
    unique_wordcount <- length(unique(cleaned_text))
    ratio <- unique_wordcount/total_words

    if (ratio <= 0.4){
      output <- animal_list[1]
    } else if (ratio <= 0.6){
      output <- animal_list[2]
    } else if (ratio <= 0.8){
      output <- animal_list[3]
    } else {
      output <- animal_list[4]
    }

    return(output)

}

