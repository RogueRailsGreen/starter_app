Feature: Create Story
	In order to assist in the organization of stories
	As a user
	I want to create a story 

Scenario: Add a New Story
	Given I visit "/stories/new"
	When I fill in "In order to" with "assist in the organization of stories"
	And I fill in "As a" with "user"
	And I fill in "I want to" with "create a story"
	And I click "Save"
	Then there is 1 story

Scenario: Attempt to Add Invalid Story	
	Given I visit "/stories/new"
	When I fill in "In order to" with "assist in the organization of stories"
	And I fill in "As a" with "user"
	And I click "Save"
	Then there are 0 stories
	And I should see "I want to can't be blank"
