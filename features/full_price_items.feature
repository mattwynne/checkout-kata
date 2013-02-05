Feature: Full price items

  Scenario: Buy a single full-price item
    Given a can of beans costs $2
    When I buy 1 can of beans
    Then the total should be $2
  