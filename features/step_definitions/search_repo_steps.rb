Given("Login with valid credentials") do
  goto_login
  login_with
end

Given("i am on my home page") do
  expect(page).to have_css ".logged-in"
end

When("i search for repository") do
  search_repo
end

Then("will not see another repository") do
  result_found_incorrect_happy_path
  expect(page).to have_no_current_path(wrong_path, url: true)
end

Then("i will see the correct repository") do
  result_found_happy_path
  expect(title).to have_text right_name
  expect(page).to have_current_path(right_path, url: true)
end

When("i search for repository: {string}") do |search|
  search_results_critical(search)
end

Then("i will not see any results {string}") do |search|
  expect(page).to have_current_path("https://github.com/?q=#{search}", url: true)
end
