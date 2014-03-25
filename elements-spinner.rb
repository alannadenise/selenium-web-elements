require 'selenium-webdriver'
require 'test/unit'
include Test::Unit::Assertions

#testing out selenium element jquery spinner and asserting the value on the alert box

class AssertionTest1 < Test::Unit::TestCase
    def test_that_popup_value_should_equal_5
        b = Selenium::WebDriver.for :firefox
        b.navigate.to "http://jqueryui.com/resources/demos/spinner/default.html"
        sleep(2)
        b.find_element(:id, 'setvalue').click
        sleep(2)
        b.find_element(:class, 'ui-spinner-up').click
        sleep(2)
        b.find_element(:id, 'getvalue').click
        sleep(2)
        a = b.switch_to.alert
        assert(a.text =="6", "value was not 6")
        a.dismiss
        sleep(2)
        b.quit
    end
end