require_relative '../calls/GetFormByID_Call'

When("I send a Get request with a valid ID") do
  GetFormsByID.formByID()
end

Then("the response should be a {int} Not found") do |int|
  GetFormsByID.status(404)
end

When("I send a Get request with an invalid ID") do
  GetFormsByID.formByInvalidID()
end

When("I send a Get request with a valid ID but not existent") do
  GetFormsByID.formByIDnotexistent()
end

Then("the response status should be {int} ok for the form ID") do |int|
  GetFormsByID.status(200)
end

Then("the response status should be {int} ok for the inexistent form ID") do |int|
  GetFormsByID.status(200)
end