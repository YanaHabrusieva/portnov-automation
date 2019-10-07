@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@value='Поиск в Google'])[2]"
    Then I wait for element with xpath "//*[@id='rso']" to be present
    Then element with xpath "//*[@id='rso']" should contain text "cucumber"

    @predefined2
    Scenario: Steps for Yahoo
      Given I open url "https://yahoo.com"
      Then I should see page title as "Yahoo"
      Then element with xpath "//input[@name='p']" should be present
      When I type "Iphone 11" into element with xpath "//input[@name='p']"
      Then I click on element using JavaScript with xpath "(//button[@id='uh-search-button'])"
      Then I wait for element with xpath "//a[text()='iPhone 11 - Apple']" to be present
      Then element with xpath "//a[text()='iPhone 11 - Apple']" should contain text "Apple"


  