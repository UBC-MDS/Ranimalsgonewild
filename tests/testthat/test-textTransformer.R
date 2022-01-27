library(stringr)
library(testthat)


test1 = "She sells sea shells by the sea shore"
test2 = "one two three four five six seven eight nine"
test3 = "your chances of being ambushed by a duck are low... but never zero!"

animal_list = c("duck", "elephant", "horse")


test_that("output is a string", {
         expect_equal('character', typeof(textTransformer(test1)))
})

test_that("output word count is the same as input word count", {
         expect_equal(str_count(test2, '\\w+'), str_count(textTransformer(test2), '\\w+'))
})

test_that("output is not the same as input (unless num_words argument is set to 0)", {
         expect_true(test2 != textTransformer(test2))
         expect_true(test2 == textTransformer(test2, num_words=0))
})

test_that("at least one of the words in output is from the pre-determined list of animals", {
         expect_true(0 < sum(str_count(textTransformer(test3), animal_list)))
})