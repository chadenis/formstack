require_relative '../calls/getForm_Call'
require_relative '../calls/postFormByID_Call'

When("I send a Post request with a valid ID") do
  PostFormsByID.postformByID
end

When("I send a Post request with an invalid ID") do
  PostFormsByID.postformByInvalidID
end

Then("the response should be a {int} Not Found") do |int|
  PostFormsByID.status(404)
end

When("I send a Post request with a valid ID but not existent") do
  PostFormsByID.postformByIDnotexistent
end

Then("the response status should be {int} ok for the post") do |int|
  PostFormsByID.status(200)
end