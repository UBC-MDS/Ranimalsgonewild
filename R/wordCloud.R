#' Title: This function modifies a block of text by randomly replacing a set number of words with wordcloud of a random animal's name.
#'
#' @param link String Character
#'
#' @return an image with the wordcloud
#' @export
#'
#' @examples
#' link = "https://www.britannica.com/place/Japan"
#' wordCloud(link)
wordCloud <- function(link) {

  output <- NULL
  len <- NULL

  if(!is.character(link)){
    stop("Inappropriate input data type! Link should be character")
  }

  if(length(link) != 1){
    stop("Incorrect amount of input values! Expecting only 1 input text string.")
  }

  library(RCurl)
  library(XML)
  library(htm2txt)
  library(wordcloud2)
  library(tm)
  library(SnowballC)
  library(wordcloud)
  library(wordcloud2)
  txt <- htm2txt(link)
  graphics.off()
  par(mar = rep(2, 4))
  source('http://www.sthda.com/upload/rquery_wordcloud.r')
  res <- rquery.wordcloud(txt, type ="file", lang = "english")$freqTable

  freqTable1 <- subset(res, grepl('^[A-Za-z]+$', word))

  txt <- htm2txt(link)
  graphics.off()
  par(mar = rep(2, 4))
  source('http://www.sthda.com/upload/rquery_wordcloud.r')
  res <- rquery.wordcloud(txt, type ="file", lang = "english")$freqTable

  freqTable1 <- subset(res, grepl('^[A-Za-z]+$', word))
  len1 <- sum(nchar(freqTable1$freq))

  if (len1 <= 1000) {
    letterCloud(freqTable1, word = "DUCK")
    len <- len1
  } else if (len1 > 1000 & len1 <= 2000) {
    letterCloud(freqTable1, word = "MONKEY")
    len <- len1
  } else if (len1>2000 & len1<=3000) {
    letterCloud(freqTable1, word ="GIRAFFE")
    len <- len1
  } else {
    letterCloud(freqTable1, word = "WHALE")
    len <- len1
  }


}
