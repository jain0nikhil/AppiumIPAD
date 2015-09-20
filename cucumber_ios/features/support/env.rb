# This file provides setup and common functionality across all features.  It's
# included first before every test run, and the methods provided here can be 
# used in any of the step definitions used in a test.  This is a great place to
# put shared data like the location of your app, the capabilities you want to
# test with, and the setup of selenium.

require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'
require 'pry'
# Create a custom World class so we don't pollute `Object` with Appium methods
# class AppiumWorld
# end
#
# # Load the desired configuration from appium.txt, create a driver then
# # Add the methods to the world
# if ENV['IDEVICENAME']=='ipad simulator'
# 	caps = Appium.load_appium_txt file: File.expand_path("./../ipadsim/appium.txt", __FILE__), verbose: true
# elsif ENV['IDEVICENAME']=='iphone simulator'
# 	caps = Appium.load_appium_txt file: File.expand_path("./../iphonesim/appium.txt", __FILE__), verbose: true
# else
# 	caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
# end
# Appium::Driver.new(caps)
# Appium.promote_appium_methods AppiumWorld
#
# World do
# 	AppiumWorld.new
# end

Before {
	# alert         = driver.switch_to.alert # Get the text of the current alert, using
	# # the Selenium::WebDriver directly
	# alerting_text = alert.text
	# puts alerting_text
	# raise Exception unless alerting_text.include? 'Cool title'
	# alert_accept # Accept the current alert

  $driver.start_driver
  $driver.set_wait(120)


}
After { $driver.driver_quit }