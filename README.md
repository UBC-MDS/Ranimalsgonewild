
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

The development version of `Ranimalsgonewild` can be downloaded from
from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/Ranimalsgonewild")
```

Please note that the `Ranimalsgonewild` package has been tested on the
following versions of the packages, and in case the codes do not work
for you, please download the right version of the dependencies. Note
that for `wordcloud2`, you need to download the development version of
the package using the command
devtools::install_github(“lchiffon/wordcloud2”).

``` r
devtools: Version 2.4.3
stringr: Version 1.4.0
graphics: Version 4.1.2
grDevices: Version 4.1.2
imager: Version 0.42.11
png: Version 0.1-7
RCurl: Version 1.98-1.5
XML: Version 3.99-0.8
htm2txt: Version 2.1.1
tm: Version 0.7-8
SnowballC: Version 0.7.0
wordcloud: Version 2.6
testthat: Version 3.1.1
wordcloud2: Version 0.2.2
```

If you get the following message below during downloading the
`Ranimalsgonewild` package, please select Option “None”.

``` r
These packages have more recent versions available.
It is recommended to update all of them.
Which would you like to update?

 1: All                               
 2: CRAN packages only                
 3: None                              
 4: pillar   (1.6.5  -> 1.7.0 ) [CRAN]
 5: magrittr (2.0.1  -> 2.0.2 ) [CRAN]
 6: rlang    (0.4.12 -> 1.0.1 ) [CRAN]
 7: glue     (1.5.1  -> 1.6.1 ) [CRAN]
 8: fansi    (0.5.0  -> 1.0.2 ) [CRAN]
 9: cli      (3.1.0  -> 3.1.1 ) [CRAN]
10: tiff     (0.1-10 -> 0.1-11) [CRAN]
11: testthat (3.1.1  -> 3.1.2 ) [CRAN]

Enter one or more numbers, or an empty line to skip updates:
```

If you encounter an error message saying: “Error in load.image(filename)
: could not find function ‘load.image’”, please make sure to run the
following line to proceed:

``` r
library(imager)
```

## Usage

This package can be used in conjunction with any code to read in
multiple text files to analyze and compare whole corpuses (your software
must call the `Ranimalsgonewild` functions for each text variable). Note
that you must include the library before runnign any of these functions:

``` r
library(Ranimalsgonewild)
```

### **Documentation**

A vignette showing detailed use of the functions can be found
[here](https://ubc-mds.github.io/Ranimalsgonewild/)

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
