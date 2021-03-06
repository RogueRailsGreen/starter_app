Feature: Create Story
	In order to assist in the organization of stories
	As a user
	I want to create a story 

Background:
	Given a project exists with name: "Foo", description: "Bar"

Scenario: Attempt to add a Story without a Project ID
	Given I visit "/stories/new"
	Then I should be on "/projects"
	And I should see "Listing projects"

Scenario: Add a New Story
	Given I visit "/projects"
	And I click "Show"
	And I click "Add Story"
	When I fill in "In order to" with "assist in the organization of stories"
	And I fill in "As a" with "user"
	And I fill in "I want to" with "create a story"
	And I fill in "Business value" with "1"
  And I fill in "Complexity value" with "1" 
	And I click "Save"
	Then there is 1 story

Scenario: Attempt to Add Invalid Story	( default project )
	Given I visit "/projects"
	And I click "Show"
	And I click "Add Story"
	When I fill in "In order to" with "assist in the organization of stories"
	And I fill in "As a" with "user"
	And I click "Save"
	Then there are 0 stories
	And I should see "I want to can't be blank"
