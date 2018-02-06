# Conversion-Calculator-Automation-Testing
 * Used Technologies: Watir + Cucumber
 * Used Design Patterns: Page Object + Singleton

# How to install ? 
 1. Install Ruby with Dev Dependencies
 2. Install Bundler
 3. ``` bundle install ```
 4. Download chrome_webdriver( or which browser driver you want to use ) 'https://chromedriver.storage.googleapis.com/index.html?path=2.35/'
 5. Put chrome_driver somewhere on your path

# How To Run ?
```
 bundle exec cucumber
```

# Test File Directories
  * Test Data: /features/support/test_data/test_data.yml
  * Test Case: /features/homepage.feature
  * Page Object Class: /features/support/pages/home_page.rb
  * Definition Of Test Cases: /features/step_definitions/homepage_steps.rb 