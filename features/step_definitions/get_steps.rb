require_relative '../calls/getCall'

When("I make a get Form call") do
  GetForms.all()
end

Then("the response status should be {string}") do |string|
  GetForms.status()
end

Then("the result should be a Json") do
  pending # Write code here that turns the phrase above into concrete actions
end