# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through 
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs

require_relative '../../../pages/flash_screen'
require_relative '../../../pages/landing_page'

Given /^I have entered (\d+) into field (\d+) of the calculator$/ do |value, field|
  # Get a textfield by index


  f = FlashScreen.new
  puts 'jjjjj'
  # f.click_ok
  f.click_done
  binding.pry

 # textfield(field.to_i).type value
end


Given(/^I continue as Guest$/) do
  f = FlashScreen.new
  f.click_done

  l = LandingPage.new
  l.click_continue_as_guest

  # l.wait_for_Loader

  l.click_continue
  l.click_allow_button
  binding.pry



end