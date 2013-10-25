
Then(/^there (?:is|are) (\d+) stor(?:y|ies)$/) do |the_number|
  Story.count.should eq(the_number.to_i)
end

Given(/^I am on the story detail page$/) do 
	step "I visit the home page"
	click_on "Show" # Project Page
	click_on "Show" # Story Page
end
