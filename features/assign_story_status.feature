Feature: Story Status
  In order to make better resource allocation decisions
  As a user (manager)
  I want to be able to assign a status to a story

Background:
  Given a project exists with name: "Foo", description: "Bar"
  And I have a story on project "Foo"
  And I have a status with the name "started"
  And I have a status with the name "unstarted"
  And I am on the edit screen

Scenario: Assign status to a Story 
  When I select "started" from status list
  And I click on "Save"
  Then the story status should be "started"
