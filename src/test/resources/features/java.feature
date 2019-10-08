@java
  Feature: java feature
    @java1
    Scenario: Initial java scenario
      Given I write first java step
      And I print "Hi" in console
      And I do action with "Apple" and "Orange"
      And I compare "Apple" and "Orange"

      @java2
      Scenario: Java steps with numbers
        Given I run operators with 10 and 3
        And I sum operators with 10 and 15

        @java3
        Scenario: Java arrays
          Given I print arrays


