require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.navigate.to ARGV[0]
driver.find_element(:name, 'q').click
p driver.manage.logs.get(:browser)
driver.quit
