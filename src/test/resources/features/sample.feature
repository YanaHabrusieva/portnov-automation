@sample
Feature: Predefined steps for classwork page

  @sample1
  Scenario: Validate Name
    Given I open url "http://skryabin.com/webdriver/html/sample.html"
    Then I should see page title as "Sample Page"
    When I click on element using JavaScript with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be displayed
    When I type "Yana" into element with xpath "//input[@id='firstName']"
    And I type "Habrusieva" into element with xpath "//input[@id='lastName']"
    And I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "Yana Habrusieva"

    @sample2
    Scenario: Verify minimum 2 characters in the username field
      Given I open url "http://skryabin.com/webdriver/html/sample.html"
      Then I should see page title as "Sample Page"
      When I type "Y" into element with xpath "//input[@name='username']"
      And I click on element with xpath "//input[@name='email']"
      Then element with xpath "//label[@id='username-error']" should contain text "at least 2 characters."

      @sample3
      Scenario: Verify that confirm password is disabled
        Given I open url "http://skryabin.com/webdriver/html/sample.html"
        Then I should see page title as "Sample Page"
        When I click on element with xpath "//input[@id='confirmPassword']"
        Then element with xpath "//input[@id='confirmPassword']" should be disabled

      

      



    



