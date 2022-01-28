#check output datatype
test_that("output datatype is correct", {
  expect_equal(typeof("string"), typeof(animalClassifier("one, two three!")))
})

#check output values for each animal cases
test_that("output value is correct", {
  expect_equal("Duck", animalClassifier("one, one one! one"))
})

test_that("output value is correct", {
  expect_equal("Monkey", animalClassifier("one three one! two one!"))
})

test_that("output value is correct", {
  expect_equal("Giraffe", animalClassifier("one one! two three!"))
})

test_that("output value is correct", {
  expect_equal("Whale", animalClassifier("one"))
})
