class HomePage
  include PageObject, Common

  page_url Common.get_url('conversion_calculator')


  unordered_list :tab_menu, :xpath => "//*[@id='topmenu']/ul"

  select_list :calfrom, :id => 'calFrom'
  select_list :calto, :id => 'calTo'

  text_field :from_input, :name => 'fromVal'
  text_field :to_input, :name => 'toVal'

end