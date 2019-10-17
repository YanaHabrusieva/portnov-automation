@webdriver
  Feature: WebDriver methods
    @webdriver
    Scenario: Open the page
      Given I go to "google" page and print details
      And I go to "sample" page and print details
      And I go back and forward, then refresh page
    @webdriver2
    Scenario: Element steps
      Given I go to "sample" page and print some details
      When I fill out first name "Peter" and last name "Orange"
      And I fill out required fields "po", "po@gmail.com", "12345", "12345"
      Then I assert submitted data