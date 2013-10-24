
Then(/^there is (\d+) story$/) do |the_number|
  Story.count.should eq(the_number.to_i)
end
