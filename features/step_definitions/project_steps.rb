

Given(/^a project exists with name: "(.*?)", description: "(.*?)"$/) do |name, description|
	t = Project.new
	t.name = name
	t.description = description
	t.save!
end

Then(/^the project at index "(\d+)" should have the name "(.*?)"$/) do |index, name|
	page.all("//table/tbody/tr")[index.to_i].should have_content( name )
end
