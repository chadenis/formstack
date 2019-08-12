Feature: Deleta for copy Form

	Scenario: Delete a Form with ID
		When I send a Delete request with a valid ID
		Then the response status should be 200 ok for the deletion

	Scenario: Delete a Form with invalid ID
		When I send a Delete request with an invalid ID
		Then the response should be a 404 Not Found for the deletion

	Scenario: Delete a Form with valid but existent ID
		When I send a Delete request with a valid ID but not existent
		Then the response status should be 200 ok for the deletion