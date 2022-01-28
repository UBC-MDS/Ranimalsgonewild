#' This function modifies a block of text by randomly replacing a set
#' number of words with a random animal.
#'
#' @param text String Character
#' @param num_words Integer
#'
#' @return a string with the modified text
#' @export
#'
#' @examples
#' text = "Your chances of being ambushed by a duck are low... but never zero!"
#' textTransformer(text)
textTransformer <- function(text, num_words=1) {
    word_list = list <- strsplit(text, " ")[[1]]
    animal_list = c("duck", "elephant", "horse")
    random_index <- floor(sample(1:length(word_list), 
                                 num_words, 
                                 replace = FALSE))

    for (i in random_index){
    word_list[i] = animal_list[[sample(1:length(animal_list), 1)]]
    }

    paste(word_list, collapse=' ')
}