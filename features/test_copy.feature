Feature: Post for copy Form

	Scenario: Copy a Form
		When I send a Post request with a valid ID
		Then the response status should be 200 ok for the post

	Scenario: Copy failed: invalid ID
		When I send a Post request with an invalid ID
		Then the response should be a 404 Not Found

	Scenario: Copy failed: ID not valid
		When I send a Post request with a valid ID but not existent
		Then the response status should be 200 ok