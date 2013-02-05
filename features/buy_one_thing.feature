Feature: Buy one thing

  Scenario: buy one thing
    Given the price of a can of beans is $2
    When I buy 1 can of beans
    Then the total should be $2

