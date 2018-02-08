Before do
  if environment == :prod
    attempts = 0
    begin
      @browser = Watir::Browser.new browser_name
    rescue Net::ReadTimeout
      if attempts.zero?
        attempts += 1
        sleep 2
        retry
      else
        raise
      end
    end
  end
end

After do |scenario|
  begin
    if scenario.failed?
      Dir.mkdir('screenshots') unless File.directory?('screenshots')
      screenshot = "./screenshots/FAILED_#{scenario.name.tr(' ','_').tr(/[^0-9A-Za-z_]/, '')}.png"
      @browser.driver.save_screenshot(screenshot)
      embed screenshot, 'image/png'
    end
    @browser.close
  end
end