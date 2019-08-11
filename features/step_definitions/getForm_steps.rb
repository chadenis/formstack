require_relative '../calls/getForm_Call'

When("I make a get Form call") do
  GetForms.all()
end

When("I send a GET request without Token header") do
  GetForms.all_without_token()
end


Then("the response status should be {int} error") do |int|
  GetForms.status(401)
end

Then("the response status should be {int} ok") do |int|
  GetForms.status(200)
end

When("I send a GET request with all the params") do
  GetForms.all_params()
end

When("I send a GET request with valid params for folders and page") do
  GetForms.valid_folder_page()
end

When("I send a GET request with valid params for folders and per_page") do
  GetForms.valid_folder_per_page()
end

When("I send a GET request with valid params for page and per_page") do
  GetForms.valid_page_per_page()
end

When("I send a GET request with all invalid params") do
  GetForms.invalid_params()
end

When("I send a GET request with invalid params for folders and page") do
  GetForms.invalid_folders_page()
end

When("I send a GET request with invalid params for folders and per_page") do
  GetForms.invalid_folder_per_page()
end

When("I send a GET request with invalid params for page and per_page") do
  GetForms.invalid_page_per_page()
end