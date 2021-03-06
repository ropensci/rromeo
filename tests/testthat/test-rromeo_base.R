context("Test rromeo base functions")

test_that("API URL matches", {
  expect_type(rr_base_url(), "character")
  expect_equal(rr_base_url(), "http://www.sherpa.ac.uk/")

  expect_type(rr_base_api(), "character")
  expect_equal(rr_base_api(), "http://www.sherpa.ac.uk/romeo/api29.php")

})

test_that("API version is correct", {
  vcr::use_cassette("rr_api_version", {
    api_version <- rr_api_version()

    expect_type(api_version, "character")
    expect_equal(api_version, "2.9.9")
  })
})
