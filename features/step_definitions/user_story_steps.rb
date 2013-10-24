Given(/^I visit "(.*?)"$/) do |url|
  visit url
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in field, with: value
end

When(/^I click "(.*?)"$/) do |button_name|
  click_on button_name
end

Then(/^there (is|are) (\d+) stor(.*)$/) do |is_are, the_number, junk|
  Story.count.should eq(the_number.to_i)
end

Then(/^I should see "(.*?)"$/) do |message|
  page.should have_content(message)
end
