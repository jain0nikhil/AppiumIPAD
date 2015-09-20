require 'rubygems'
require 'page-object'
require 'appium_lib'
require_relative '../pages/driver_method'
class BasePage  < DriverMethod

  Continue_Button ='CONTINUE'
  Loader_text = 'Loading content...'

  def click_continue
    # wait(60) {find("#{Continue_Button}").click }
    _click_ Continue_Button
  end

  def click_allow_button
    _click_ 'Allow'
  end

  def wait_for_Loader
    wait_true { !exists { tag('UIAStaticText') } }
  end
end


if ENV['IDEVICENAME']=='ipad simulator'
  caps = Appium.load_appium_txt file: File.expand_path("./../../cucumber_ios/features/support/ipadsim/appium.txt", __FILE__), verbose: true
elsif ENV['IDEVICENAME']=='iphone simulator'
  caps = Appium.load_appium_txt file: File.expand_path("./../iphonesim/appium.txt", __FILE__), verbose: true
else
  caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true
end


Appium::Driver.new(caps)
Appium.promote_appium_methods BasePage



World do
  BasePage.new
end
