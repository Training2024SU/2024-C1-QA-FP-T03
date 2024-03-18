Feature: Add product to cart
  As a user I want to add products to the cart so that I can buy them latter

  Background: product details page
    Given The user is on a product details page

  Scenario: Add available product to cart
    When The user adds the product to the shopping cart
    Then he sees the product as an item in the shopping cart

  Scenario: Add unavailable product to cart
    When The user adds the product to the shopping cart
    Then he sees an error saying that the product can't be added
