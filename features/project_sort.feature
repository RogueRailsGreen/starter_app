Feature: Project Sort
  In order to make finding projects easier
  As a user
  I want to be able to sort the project list by columns

  Background: Database initialization
    Given a project exists with name: "A project", description: "Z description"
    And a project exists with name: "Z project", description: "A description"

  Scenario: Sort by name ascending (default)
    Given I visit the home page
    # When I click "Name"
    Then the project at index "0" should have the name "A project"
    And the project at index "1" should have the name "Z project"

  Scenario: Sort by name descending
    Given I visit the home page
    # And I click "Name"
    When I click "Name"
    Then the project at index "1" should have the name "A project"
    And the project at index "0" should have the name "Z project"

  Scenario: Sort by description ascending
    Given I visit the home page
    When I click "Description"
    Then the project at index "1" should have the name "A project"
    And the project at index "0" should have the name "Z project"

  Scenario: Sort by description descending
    Given I visit the home page
    And I click "Description"
    When I click "Description"
    Then the project at index "0" should have the name "A project"
    And the project at index "1" should have the name "Z project"
