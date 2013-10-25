Feature: Project View
  In order to understand the state of a Project.
  As a User
  I want to be able to View the details of the project, including the list of stories.

  Background:
    Given a project exists with name: "A project", description: "Z description"
    And I visit the home page

  Scenario: View Project Info ( empty project )
    When I click "Show"
    Then I should see "Project: A project"
    And I should see "0 Stories"
    And I should see "Add Story"

  Scenario: View Project Info ( non empty project )
    Given project "A project" has a story with in_order_to: "foo", as_a: "bar", i_want_to: "bam"
    When I click "Show"
    Then I should see "Project: A project"
    And I should see "1 Story"
    And I should see "In order to foo, as a bar, I want to bam"
    And I should see "Add Story"
