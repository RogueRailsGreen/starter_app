Feature: Story Comments
  In order to make stories negotiable
  As a user (collaborator)
  I want to comment on a Story

Background:
  Given a project exists with name: "Foo", description: "Bar"
  And a story exists with project: the project
  And I am on the story detail page

Scenario: Comment on a Story
  When I click on "Add Comment"
  And I fill in "comment[body]" with "This is Terrible!"
  And I click on "Save"
  Then I should see "Comment was successfully created."

Scenario: List Comments for a Story
  Given a comment exists with story: the story
