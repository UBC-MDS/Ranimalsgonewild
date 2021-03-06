% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/animalType.R
\name{animalType}
\alias{animalType}
\title{Analyzes text based on average word length and returns an animal picture representing language complexity.}
\usage{
animalType(species, text)
}
\arguments{
\item{species}{A string representing species, must be one of "Duck", "Monkey", "Giraffe", "Whale"}

\item{text}{A string of characters to be analyzed}
}
\value{
A jpeg of an animal
}
\description{
Analyzes text based on average word length and returns an animal picture representing language complexity.
}
\examples{
text <- "I like pie"
animal_rep <- animalType(animalClassifier(text), text)

text <- "Pie's abundantly awesome"
species <- "Duck"
animal_rep <- animalType(species, text)
}
