
Given(/^I visit the home page$/) do
  visit "/"
end

Given(/^I visit "(.*?)"$/) do |url|
  visit url
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content( text )
end

When(/^I click "(.*?)"$/) do |link_text|
  click_on link_text
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in field, with: value
end
