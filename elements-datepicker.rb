require 'selenium-webdriver'
require 'test/unit'
include Test::Unit::Assertions

#testing out selenium element jquery datepicker and asserting the value on the alert box

class AssertionTest1 < Test::Unit::TestCase
    def test_that_popup_value_should_equal_5
        b = Selenium::WebDriver.for :firefox
        b.navigate.to "http://jqueryui.com/resources/demos/datepicker/default.html"

        b.find_element(:id, 'datepicker').click
        month = b.find_element(:class, "ui-datepicker-month").text
        year = b.find_element(:class, "ui-datepicker-year").text
        while !(month == "October" && year == "2013")
            b.find_element(:class, "ui-datepicker-prev").click
            month = b.find_element(:class, "ui-datepicker-month").text
            year = b.find_element(:class, "ui-datepicker-year").text
        end
        #the //* below means find any element with the text of 2 in it, if you had //a it would be looking for element 'a' with a text value of 2
        b.find_element(:xpath,"//*[text()= '2']").click
    end
end