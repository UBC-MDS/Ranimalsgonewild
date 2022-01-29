library(imager)

test_that("fails to return dumb duck on small word length text", {
  small_words <- "hi my name is john and I am simple"
  dir <- dirname(getwd())
  dir <- dirname(dir)
  filename <- paste(dir, "/imgs/dumb_Duck.jpeg", sep = "")
  dumb_duck <- load.image(filename)
  expect_equal(animalType("Duck", small_words), "dumb_Duck")
})

test_that("fails to return smart giraffe on large word length text", {
  dir <- dirname(getwd())
  dir <- dirname(dir)
  print(dir)
  big_words = "inscrutable or at least esoteric language."
  filename <- paste(dir, "/imgs/smart_Giraffe.jpeg", sep = "")
  smart_giraffe <- load.image(filename)
  expect_equal(animalType("Giraffe", big_words), "smart_Giraffe")
})
test_that("fails to return dumb whale in text with punctuation", {
  dir <- dirname(getwd())
  dir <- dirname(dir)
  print(dir)
  bad_words = "hi' my; na/me is j!ohn and I am simple"
  filename <- paste(dir, "/imgs/dumb_Whale.jpeg", sep = "")
  dumb_whale <- load.image(filename)
  expect_equal(animalType("Whale", bad_words), "dumb_Whale")
})
