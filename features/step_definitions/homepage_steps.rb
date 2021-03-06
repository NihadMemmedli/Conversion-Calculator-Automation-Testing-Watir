Given(/^I am on the conversion calculator home page$/) do
  visit HomePage
end

When(/^I click "([^"]*)" on menu$/) do |tab|
  @current_page.tab_menu_element.li(:text => tab).wait_until_present.click
end

Then(/^I check the "([^"]*)" is active$/) do |tab|
  expect(@current_page.tab_menu_element.li(:text => tab).id).to eq('menuon')
end

Then(/^I click "([^"]*)" option on "([^"]*)" table$/) do |unit, table_type|
  if table_type == 'from'
    @current_page.calfrom_element.select(unit)
  elsif table_type == 'to'
    @current_page.calto_element.select(unit)
  else
    puts 'This table type is not defined'
  end
end

When(/^I set value to first input as "([^"]*)"$/) do |first_unit|
  @conversion_data = Common.get_all('conversion_data')
  @current_page.calfrom_input = @conversion_data[first_unit]
end

Then(/^I get value from second input as "([^"]*)"$/) do |second_unit|
  @expected_data = Common.get_all('expected_conversion')
  expect(@current_page.calto_input).to eq(@expected_data[second_unit].to_s)
end
