
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Ranimalsgonewild

<!-- badges: start -->

[![R-CMD-check](https://github.com/UBC-MDS/Ranimalsgonewild/workflows/R-CMD-check/badge.svg)](https://github.com/UBC-MDS/Ranimalsgonewild/actions)
[![codecov](https://codecov.io/gh/UBC-MDS/Ranimalsgonewild/branch/main/graph/badge.svg?token=V2GblMbnZy)](https://codecov.io/gh/UBC-MDS/Ranimalsgonewild)

<!-- badges: end -->

This package is designed to demonstrate how basic features of text
analysis can be utilized to analyze and represent a text file or string
while applying a humorous lens (because what is data science without a
dash of humor!). It counts the number of words from a text, calculates
the average word length of that text, and returns an animal image
corresponding to the average word length. It subsequently transforms the
text into a wordcloud in block letters of the animal. We have included a
bonus fourth function for fun, inspired by the popular childhood game -
MadLibs.

# Contributors

Kyle Maj, Nagraj Rao, Morgan Rosenberg, Junrong Zhu

## Installation

Prior to the installation of `Ranimalsgonewild`, you need to download
several dependency packages on to your hard drive, for this package to
work. Note that for `wordcloud2`, you need to download the development
version of the package.

``` r
# install.packages("devtools")
# install.packages("stringr")
# install.packages("graphics")
# install.packages("grDevices")
# install.packages("imager")
# install.packages("png")
# install.packages("RCurl")
# install.packages("XML")
# install.packages("htm2txt")
# install.packages("tm")
# install.packages("SnowballC")
# install.packages("wordcloud")
# install.packages("testthat")
# devtools::install_github("lchiffon/wordcloud2")
```

After ensuring you have the aforementioned packages, you can install the
development version of `Ranimalsgonewild` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/Ranimalsgonewild")
```

If you met an error message saying: “Error in load.image(filename) :
could not find function ‘load.image’”, please make sure to run the
following line to proceed:

    library(imager)

## Usage

This package can be used in conjunction with any code to read in
multiple text files to analyze and compare whole corpuses (your software
must call the `Ranimalsgonewild` functions for each text variable). Note
that you must include the library before runnign any of these functions:

``` r
library(Ranimalsgonewild)
```

### Function 1: animalClassifier

This function takes a sequence of text(character), counts the words in
the string, and then returns an animal type (character).

``` r
animalClassifier("I just caught a pikachu!")
```

### Function 2: animalType

This function takes a sequence of text(str) and a species (str),
determines the average word length (proxy for language complexity), and
returns an animal image (jpg) corresponding to the average word length.

``` r
text <- "Pie's abundantly awesome"
species <- "Duck"
animal_rep <- animalType(species, text)
```

### Function 3: wordCloud

This function takes a website link for which a wordcloud is to be
generated as a text variable: text(character). It displays a wordcloud
with the characters from the text of the website embedded onto a
wordcloud image.

``` r
link = "https://www.britannica.com/place/Japan"
wordCloud(link)
```

### Function 4: textTransformer

This function takes a sequence of text(character) and a
species(character), and randomly replaces a set number of words with a
random animal.

``` r
text = "Your chances of being ambushed by a duck are low... but never zero!"
textTransformer(text)
```

### Fit within the R ecosystem:

While other fun packages with animal images exist, most are very basic.
For example, the cowsay package
(<https://cran.r-project.org/web/packages/cowsay/vignettes/cowsay_tutorial.html>)
makes it easy to print messages, warnings, or character strings with
various animals and other creatures. However, we were unable to find any
interactive, multidimensional comedic relief package, where users can
input information, and receive dynamic humorous feedback in the form of
cute and/or hilarious animals. Given how much time we all are spending
in front of a computer screen during the pandemic, this package is an
essential addition to the ecosystem promoting mental wellness through
humor. By offering it as a package rather than a script, we also empower
other developers to integrate this is as a fun injection to their coding
projects.

## Contributing

Interested in contributing? Check out the contributing guidelines.
Please note that this project is released with a Code of Conduct. By
contributing to this project, you agree to abide by its terms.

## License

`Ranimalsgonewild` was created by DSCI 524 - Team 16: Nagraj Rao,
Junrong Zhu, Kyle Maj, Morgan Rosenberg

It is licensed under the terms of the MIT license.

## Credits

`Ranimalsgonewild` was created using the tutorial in
[`The Whole Game`](https://r-pkgs.org/whole-game.html)
