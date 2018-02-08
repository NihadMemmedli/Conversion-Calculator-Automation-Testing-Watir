# This class include elements of conversion calculator page
# cal = calculate
class HomePage
  include PageObject

  page_url Common.get_url('conversion_calculator')

  unordered_list :tab_menu, :xpath => "//*[@id='topmenu']/ul"

  select_list :calfrom, :id => 'calFrom'
  select_list :calto, :id => 'calTo'

  text_field :calfrom_input, :name => 'fromVal'
  text_field :calto_input, :name => 'toVal'

end