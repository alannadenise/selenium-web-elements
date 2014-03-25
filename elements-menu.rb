require 'selenium-webdriver'
require 'test/unit'
include Test::Unit::Assertions

#testing out selenium element jquery menu and asserting the value on the alert box

class AssertionTest1 < Test::Unit::TestCase
    def test_that_popup_value_should_equal_5
        b = Selenium::WebDriver.for :firefox
        wait = Selenium::WebDriver::Wait.new(:timeout => 3)
        b.navigate.to "http://jqueryui.com/resources/demos/menu/default.html"
        menu1 = b.find_element(:id, "ui-id-5")
        b.action.move_to(menu1).perform
        wait.until { b.find_element(:id => "ui-id-11").displayed? }
        menu2 = b.find_element(:id, "ui-id-11")
        b.action.move_to(menu2).perform
    end
end