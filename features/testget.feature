Feature: Get tests

  # The first example has two steps
  Scenario: Get all Forms
    When I make a get Form call
    Then the response status should be "200"
    And the result should be a Json