@home_work_1
  Feature: Predefined steps for sample page
    @home_work_1.1
    Scenario: Verify form save information
      Given I open url "http://skryabin.com/webdriver/html/sample.html"
      Then I should see page title as "Sample Page"
      When I click on element using JavaScript with xpath "//input[@id='name']"
      Then element with xpath "//div[@id='nameDialog']" should be displayed
      When I type "Yana" into element with xpath "//input[@id='firstName']"
      And I type "Habrusieva" into element with xpath "//input[@id='lastName']"
      And I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should have attribute "value" as "Yana Habrusieva"
      When I type "lyana751" into element with xpath "//input[@name='username']"
      And I type "12345" into element with xpath "//input[@id='password']"
      And I type "12345" into element with xpath "//input[@id='confirmPassword']"
      And I type "lyana751@gmail.com" into element with xpath "//input[@name='email']"
      And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//b[@name='firstName']" should have text as "Yana"
      And element with xpath "//b[@name='email']" should have text as "lyana751@gmail.com"
      And element with xpath "//b[@name='lastName']" should have text as "Habrusieva"
      And element with xpath "//b[@name='password']" should have text as "[entered]"
      And element with xpath "//b[@name='name']" should have text as "Yana Habrusieva"
      And element with xpath "//b[@name='agreedToPrivacyPolicy']" should have text as "true"
      And element with xpath "//b[@name='username']" should have text as "lyana751"

      @home_work_1.2
      Scenario: Verify form save all information
        Given I open url "http://skryabin.com/webdriver/html/sample.html"
        Then I should see page title as "Sample Page"
        When I click on element using JavaScript with xpath "//input[@id='name']"
        Then element with xpath "//div[@id='nameDialog']" should be displayed
        When I type "Yana" into element with xpath "//input[@id='firstName']"
        And I type "Habrusieva" into element with xpath "//input[@id='lastName']"
        And I click on element using JavaScript with xpath "//span[contains(text(),'Save')]"
        Then element with xpath "//input[@id='name']" should have attribute "value" as "Yana Habrusieva"
        When I click on element with xpath "//select[@name='countryOfOrigin']"
        And I click on element with xpath "//option[contains(text(),'United States of America')]"
        And I type "700 Agnew road,apt 253" into element with xpath "//textarea[@id='address']"
        And I type "12345678" into element with xpath "//input[@name='phone']"
        And I click on element with xpath "//div[5]//label[2]//input[1]"
        And I click on element with xpath "//option[contains(text(),'Toyota')]"
        And I type "lyana751" into element with xpath "//input[@name='username']"
        And I type "06.18.1991" into element with xpath "//input[@name='dateOfBirth']"
        And I type "12345" into element with xpath "//input[@id='password']"
        And I type "12345" into element with xpath "//input[@id='confirmPassword']"
        And I type "lyana751@gmail.com" into element with xpath "//input[@name='email']"
        And I click on element with xpath "//input[@name='allowedToContact']"
        And I switch to iframe with xpath "//iframe[@name='additionalInfo']"
        And I type "Yana" into element with xpath "//input[@id='contactPersonName']"
        And I type "1234567" into element with xpath "//input[@id='contactPersonPhone']"
        And I switch to default content
        And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
        And I click on element with xpath "//button[@id='formSubmit']"
        Then element with xpath "//b[@name='firstName']" should have text as "Yana"
        And element with xpath "//b[@name='email']" should have text as "lyana751@gmail.com"
        And element with xpath "//b[@name='lastName']" should have text as "Habrusieva"
        And element with xpath "//b[@name='password']" should have text as "[entered]"
        And element with xpath "//b[@name='name']" should have text as "Yana Habrusieva"
        And element with xpath "//b[@name='agreedToPrivacyPolicy']" should have text as "true"
        And element with xpath "//b[@name='username']" should have text as "lyana751"
        And element with xpath "//b[@name='countryOfOrigin']" should have text as "USA"
        And element with xpath "//b[@name='dateOfBirth']" should have text as "06.18.1991"
        And element with xpath "//b[@name='gender']" should have text as "male"
        And element with xpath "//b[@name='contactPersonName']" should have text as "Yana"
        And element with xpath "//b[@name='contactPersonPhone']" should have text as "1234567"