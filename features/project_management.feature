Feature: Project Management
  In order organize multiple projects within the system.
  As a project manager
  I want to be able to list, create, & view projects.

  Scenario: View Project List
    Given I visit the home page
    Then I should see "Listing projects"
    And I should see "New Project"

  Scenario: Add Project
    Given I visit the home page
    When I click "New Project"
    And I fill in "project_name" with "sample project"
    And I fill in "project_description" with "A project ... the Larch"
    And I click "Create Project"
    Then I should see "Project was successfully created"
    And I should see "sample project"
    And I should see "A project ... the Larch"

