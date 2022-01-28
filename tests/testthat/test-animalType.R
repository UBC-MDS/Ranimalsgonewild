library(imager)

test_that("fails to return dumb duck on small word length text", {
  small_words <- "hi my name is john and I am simple."
  dumb_duck <- load.image("./imgs/dumb_duck.jpeg")
  expect_equal(animalType("Duck", small_words), dumb_duck)
})

test_that("fails to return smart giraffe on large word length text", {
  big_words = "inscrutable or at least esoteric language."
  smart_giraffe <- load.image("./imgs/smart_Giraffe.jpeg")
  expect_equal(animalType("Giraffe", big_words), smart_giraffe)
})

test_that("fails to return smart whale while using text from preformatted document", {
  formatted_text = read.delim("./tests/bigwords.txt")
  smart_whale <- load.image("./imgs/smart_whale.jpeg")
  expect_equal(animalType("Whale", formatted_text), smart_whale)
})
