

Given(/^a project exists with name: "(.*?)", description: "(.*?)"$/) do |name, description|
	t = Project.new
	t.name = name
	t.description = description
	t.save!
end

Then(/^the project at index "(\d+)" should have the name "(.*?)"$/) do |index, name|
	pending # TODO: Write this.
end
