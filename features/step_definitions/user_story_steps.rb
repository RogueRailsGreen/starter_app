Given(/^I visit "(.*?)"$/) do |url|
  visit url
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in field, with: value
end

When(/^I click "(.*?)"$/) do |button_name|
  click_on button_name
end

Then(/^there is (\d+) story$/) do |the_number|
  Story.count.should eq(the_number.to_i)
end
