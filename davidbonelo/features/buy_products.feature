Feature: Buy products in the cart
  As a user I want to buy products in the website so that I receive them at my house

  Background: cart page
    Given User is looking at his shopping cart

  Scenario: Buy empty cart
    Given The cart is empty
    When the user goes to make the purchase
    Then he shouldn't be able to make the purchase
    And he should see a warning that his cart is empty

  Scenario Outline: Buy cart with x item
    Given the cart has <quantity> item
    When the user goes to make the purchase
    Then he should be asked for the payment method
    Examples:
      | quantity |
      | 1        |
      | 2        |