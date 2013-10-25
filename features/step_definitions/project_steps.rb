Then(/^the project at index "(\d+)" should have the name "(.*?)"$/) do |index, name|
	page.all("//table/tbody/tr")[index.to_i].should have_content( name )
end

Given( /^project "(.*?)" has a story with in_order_to: "(.*?)", as_a: "(.*?)", i_want_to: "(.*?)", business_value: "(.*?)", complexity_value: "(.*?)"$/) do |project_name, in_order_to, as_a, i_want_to, business_value, complexity_value|
	p = Project.find_by_name( project_name )
	s = Story.create(in_order_to: in_order_to, as_a: as_a, i_want_to: i_want_to, project: p, business_value: business_value.to_i, complexity_value: complexity_value.to_i)
end