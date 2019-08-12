require_relative '../calls/getForm_Call'
require_relative '../calls/DeleteFormByID_Call'

When("I send a Delete request with a valid ID") do
  DeleteFormByID.deleteformByID
end

When("I send a Delete request with an invalid ID") do
  DeleteFormByID.deleteformByInvalidID
end

When("I send a Delete request with a valid ID but not existent") do
  DeleteFormByID.deleteformByIDnotexistent
end

Then("the response status should be {int} ok for the deletion") do |int|
  DeleteFormByID.status_delete(200)
end

Then("the response should be a {int} Not Found for the deletion") do |int|
  DeleteFormByID.status_delete(404)
end