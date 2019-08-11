Feature: Form tests

	Scenario: Get all Forms without Token header
		When I send a GET request without Token header
		Then the response status should be 401 error

	Scenario: Get all Forms with Token header
	    When I make a get Form call
	    Then the response status should be 200 ok

	Scenario: Get all Forms with all the params
		When I send a GET request with all the params
		Then the response status should be 200 ok

	Scenario: Get all Forms with params: folders and page
		When I send a GET request with valid params for folders and page
		Then the response status should be 200 ok

	Scenario: Get all Forms with params: folders and per_page
		When I send a GET request with valid params for folders and per_page
		Then the response status should be 200 ok

	Scenario: Get all Forms with params: page and per_page
		When I send a GET request with valid params for page and per_page
		Then the response status should be 200 ok

	Scenario: Get all Forms with all invalid params
		When I send a GET request with all invalid params
		Then the response status should be 200 ok

	Scenario: Get all Forms with invalid params for: folders and page
		When I send a GET request with invalid params for folders and page
		Then the response status should be 200 ok

	Scenario: Get all Forms with invalid params for: folders and per_page
		When I send a GET request with invalid params for folders and per_page
		Then the response status should be 200 ok

	Scenario: Get all Forms with invalid params for: page and per_page
		When I send a GET request with invalid params for page and per_page
		Then the response status should be 200 ok

