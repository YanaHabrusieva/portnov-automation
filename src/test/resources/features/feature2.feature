@predefined
Feature: Feature2 steps

  @predefined2
  Scenario: Should find Apple
    Given I open url "https://yahoo.com"
    Then I should see page title as "Yahoo"
    Then element with xpath "//input[@name='p']" should be present
    When I type "Iphone 11" into element with xpath "//input[@name='p']"
    Then I click on element using JavaScript with xpath "(//button[@id='uh-search-button'])"
    Then I wait for element with xpath "//a[text()='iPhone 11 - Apple']" to be present
    Then element with xpath "//a[text()='iPhone 11 - Apple']" should contain text "Apple"


