Feature: Buy products

  Scenario: Buy one product
    Given the price of a can of beans is $2
    When I buy 1 can of beans
    Then the total should be $2

  Scenario: Buy different products
    Given the price of a can of beans is $2
    And the price of a pack of sausages is $3
    When I buy 1 can of beans
    And I buy 1 pack of sausages
    Then the total should be $5
