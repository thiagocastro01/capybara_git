Given("i access the login page") do
  goto_login
end

When("i fill the login and password fields") do
  #binding.pry
  login_with
end

Then("I will be redirected to my home page") do
  expect(page).to have_css ".logged-in"
end

When("i fill the login and password fields with:") do |table|
  user = table.rows_hash
  username = user[:username]
  senha = user[:password]

  login_try(username, password)
end

Then("i should see the warning {string}") do |text_message|
  expect(login_message_alert).to eql text_message
end

# steps dinamicos
When("i acess the login page") do
  steps %(
    i access the login page
  )
end

Then("should be shown follow css selector: {string}") do |expected_css|
  expect(page).to have_css expected_css
end
