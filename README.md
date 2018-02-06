# Conversion-Calculator-Automation-Testing
 * Used Technologies: Watir + Cucumber
 * Used Design Patterns: Page Object + Singleton

# How to install ? 
 1. Install Ruby with Dev Dependencies 'https://www.ruby-lang.org/en/documentation/installation/#apt'
 2. Install Bundler 'http://bundler.io/' 
 3. Download Chrome_webdriver( or which browser driver you want to use ) 'https://chromedriver.storage.googleapis.com/index.html?path=2.35/'
 4. Put Chrome_driver Somewhere On Your Path
 5. Execute Command: ``` bundle install ```

# How To Run ?
```
 bundle exec cucumber
```

# Test File Directories
  * Test Data: /features/support/test_data/test_data.yml
  * Test Case: /features/homepage.feature
  * Page Object Class: /features/support/pages/home_page.rb
  * Definition Of Test Cases: /features/step_definitions/homepage_steps.rb
 
 #Headless Mode
   Change Code Inside /features/support/hooks.rb
   
  ``` @browser = Watir::Browser.new(:chrome) ```   
  to
  
  ``` @browser = Watir::Browser.new(:chrome, headless:true) ``` 