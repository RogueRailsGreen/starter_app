Given(/^I have a story$/) do
  @story = FactoryGirl.create(:story)
end

Given(/^I am on the edit screen$/) do
  visit edit_story_path(@story)
end

Given(/^I have a status with the name "(.*?)"$/) do |status_name|
  FactoryGirl.create(:status, name: status_name)
end

When(/^I select "(.*?)" from status list$/) do |status_name|
  page.select(status_name, from: "story_status_id")
end

When(/^I click on "(.*?)"$/) do |link_text|
  click_on link_text
end

Then(/^the story status should be "(.*?)"$/) do |status_name|
  @story.reload.status.name.should eq(status_name)
end
