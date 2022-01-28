# HERE I AM TESTING OUTPUTS FOR DIFFERENT WEBSITES


test_that("Number of words not correct for this link - https://www.tiffanytimbers.com/", {
  expect_lt(wordCloud("https://www.tiffanytimbers.com/"), 1000)
})

test_that("Number of words not correct for this link - https://en.wikipedia.org/wiki/Tanmay_Bhat", {
  expect_gt(wordCloud("https://en.wikipedia.org/wiki/Tanmay_Bhat"), 1000)
})

test_that("Number of words not correct for this link - https://en.wikipedia.org/wiki/Tanmay_Bhat", {
  expect_lt(wordCloud("https://en.wikipedia.org/wiki/Tanmay_Bhat"), 2000)
})


test_that("Number of words not correct for this link - https://www.britannica.com/place/Japan", {
  expect_gt(wordCloud("https://www.britannica.com/place/Japan"), 2000)
})

test_that("Number of words not correct for this link - https://www.britannica.com/place/Japan", {
  expect_lt(wordCloud("https://www.britannica.com/place/Japan"), 3000)
})

test_that("Number of words not correct for this link - https://en.wikipedia.org/wiki/India", {
  expect_gt(wordCloud("https://en.wikipedia.org/wiki/India"), 3000)
})
