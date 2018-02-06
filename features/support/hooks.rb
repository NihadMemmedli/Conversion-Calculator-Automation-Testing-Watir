Before do
  include Common
  @browser = Watir::Browser.new(:chrome)
end

After do |scenario|
  begin
    if scenario.failed?
      Dir::mkdir('screenshots') unless File.directory?('screenshots')
      screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
      @browser.driver.save_screenshot(screenshot)
      embed screenshot, 'image/png'
    end
    @browser.close
  end
end