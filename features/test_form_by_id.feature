Feature: Form with ID tests

	Scenario: Get Form by ID
		When I send a Get request with a valid ID
		Then the response status should be 200 ok for the form ID

	Scenario: Get Form with invalid ID
		When I send a Get request with an invalid ID
		Then the response should be a 404 Not found

	Scenario: Get Form with inexistent ID
		When I send a Get request with a valid ID but not existent
		Then the response status should be 200 ok for the inexistent form ID