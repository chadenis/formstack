Feature: Post for copy Form

	Scenario: Copy a Form
		Given I send a Post request with a valid ID
		Then the response status should be 200 ok

	Scenario: Copy failed: invalid ID
		Given I send a Post request with an invalid ID
		Then the response should be a 404 Not Found

	Scenario: Copy failed: ID not valid
		Given I send a Post request with a valid ID but not existant
		Then the response status should be 200 ok