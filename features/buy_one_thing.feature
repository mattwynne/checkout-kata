Feature: Buy one thing

  Scenario: 
    Given the price of a can of beans is $1
    When I buy 1 can of beans
    Then the total should be $1

