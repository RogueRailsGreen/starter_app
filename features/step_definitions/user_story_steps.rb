Given(/^I visit "(.*?)"$/) do |url|
  visit url
end

Then(/^there (is|are) (\d+) stor(.*)$/) do |is_are, the_number, junk|
  Story.count.should eq(the_number.to_i)
end
