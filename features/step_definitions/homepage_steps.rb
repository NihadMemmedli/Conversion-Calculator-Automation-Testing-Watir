Given(/^I am on the conversion calculator home page$/) do
  visit HomePage
end

When(/^I click "([^"]*)" on menu$/) do |tab|
  @current_page.tab_menu_element.li(:text => tab).click
end

When(/^I check the "([^"]*)" is active$/) do |tab|
  expect(@current_page.tab_menu_element.li(:text => tab).id).to eq('menuon')
end

Then(/^I set value to first input as "([^"]*)"$/) do |first_unit|
  @conversion_data = Common.get_all('conversion_data')
  @current_page.from_input = @conversion_data[first_unit]
end

Then(/^I get value to second input as "([^"]*)"$/) do |second_unit|
  @expected_data = Common.get_all('expected_conversion')
  expect(@current_page.to_input).to eq(@expected_data[second_unit].to_s)
end

Then(/^I click "([^"]*)" option from "([^"]*)" calculator$/) do |unit, calc_type|
  if calc_type == "first"
    @current_page.calfrom_element.select unit
  end
  if calc_type == "second"
    @current_page.calto_element.select unit
  end

end