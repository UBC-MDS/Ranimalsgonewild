library(imager)

test_that("fails to return dumb duck on small word length text", {
  small_words <- "hi my name is john and I am simple"
  dir <- dirname(getwd())
  dir <- dirname(dir)
  filename <- paste(dir, "/imgs/dumb_Duck.jpeg", sep = "")
  dumb_duck <- load.image("/Users/morganrosenberg/Documents/MDS_labs/524/Ranimalsgonewild/imgs/dumb_Duck.jpeg")
  expect_equal(animalType("Duck", small_words), dumb_duck)
})

test_that("fails to return smart giraffe on large word length text", {
  dir <- dirname(getwd())
  dir <- dirname(dir)
  big_words = "inscrutable or at least esoteric language."
  filename <- paste0(dir, "/imgs/smart_Giraffe.jpeg")
  smart_giraffe <- load.image(filename)
  expect_equal(animalType("Giraffe", big_words), smart_giraffe)
})
test_that("fails to return dumb whale in text with punctuation", {
  dir <- dirname(getwd())
  dir <- dirname(dir)
  bad_words = "hi' my; na/me is j!ohn and I am simple"
  filename <- paste0(dir, "/imgs/dumb_Whale.jpeg")
  dumb_whale <- load.image(filename)
  expect_equal(animalType("Whale", bad_words), dumb_whale)
})
