
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Ranimalsgonewild

<!-- badges: start -->
<!-- badges: end -->

This package is designed to demonstrate how basic features of text
analysis can be utilized to analyze and represent a text file or string
while applying a humorous lens (because what is data science without a
dash of humor!). It counts the number of words from a text, calculates
the average word length of that text, and returns an animal image
corresponding to the average word length. It subsequently transforming
the text into a wordcloud in the shape of the animal. We have included a
bonus fourth function for fun, inspired by the popular childhood game -
MadLibs.

#Contributors Kyle Maj, Nagraj Rao, Morgan Rosenberg, Junrong Zhu

## Installation

You can install the development version of Ranimalsgonewild from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("UBC-MDS/Ranimalsgonewild")
```

## Usage

This package can be used in conjunction with any code to read in
multiple text files to analyze and compare whole corpuses (your software
must call the Animals Gone Wild functions for each text variable).

### Function 1: animalClassifier

This function takes a sequence of text(str), counts the words in the
string, and then returns an animal type (str).

### Function 2: animalType

This function takes a sequence of text(str) and a species (str),
determines the average word length (proxy for language complexity), and
returns an smart looking animal image (jpg) corresponding to the average
word length.

### Function 3: wordcloud

This function takes a sequence of text(str) and an animal image (jpg),
and returns a wordcloud in the shape of the species comprised of the
sequence of text (jpg).

### Function 4: textTransformer

This function takes a sequence of text(str) and a species(str), and
returns a new text sequence where all proper nouns are replaced with the
species.

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
projecs.

## Contributing

Interested in contributing? Check out the contributing guidelines.
Please note that this project is released with a Code of Conduct. By
contributing to this project, you agree to abide by its terms.

## License

`Ranimalsgonewild` was created by DSCI 524 - Team 16: Nagraj Rao,
Junrong Zhu, Kyle Maj, Morgan Rosenberg

It is licensed under the terms of the MIT license.

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
