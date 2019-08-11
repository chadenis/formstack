require_relative '../calls/getForm_Call'
require_relative '../calls/GetFormByID_Call'

When("I send a Get request with a valid ID") do
  GetFormsByID.formByID()
end

Then("the response should be a {int} Not found") do |int|
  GetForms.status(404)
end

When("I send a Get request with an invalid ID") do
  GetFormsByID.formByInvalidID()
end

When("I send a Get request with a valid ID but not existant") do
  GetFormsByID.formByIDnotexistant()
end